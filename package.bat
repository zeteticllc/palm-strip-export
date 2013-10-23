set EXE=palm-strip-export.exe
set APP=palm-strip-export.app
set LNX=palm-strip-export-linux

perlapp --trim JSON::PP58 --norunlib --gui --nologo --target windows-x86-32 --info "CompanyName=Zetetic LLC;FileVersion=1.0.1;InternalName=convert-to-strip;LegalCopyright=Copyright, 2013 all rights reserved;OriginalFilename=palm-strip-export;ProductName=Palm STRIP Export;ProductVersion=1.0.1" --exe %EXE% palm-strip-export.pl

perlapp --trim JSON::PP58 --norunlib --gui --nologo --target macosx-universal-32 --exe %APP% palm-strip-export.pl

set ZIP=tools\7za.exe

del /q %EXE%.zip
del /q %APP%.zip

%ZIP% a -tzip %EXE%.zip %EXE%
%ZIP% a -tzip %APP%.zip %APP%

del /q %EXE%
rmdir /s /q %APP%
