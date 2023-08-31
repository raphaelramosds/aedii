@echo off
setlocal

set "targetFolder=C:\Users\rapha\Documents\Projetos Python\aedii\week-2\assets"

for %%F in ("%targetFolder%\*-processed.txt") do (
    del "%%F"
    echo Excluído: %%F
)

echo Todos os arquivos com sufixo -copy foram excluídos.

endlocal
Lembre-se de substituir C:\Caminho\Para\Pasta\Alvo pelo caminho real para a pasta onde os arquivos com o sufixo -copy estão localizados. Salve este código em um arquivo com a extensão .bat, por exemplo, delete_copy_files.bat, e execute-o. Certifique-se de ter cuidado ao executar scripts de exclusão em massa, pois os arquivos serão permanentemente excluídos. É sempre uma boa ideia fazer um backup dos arquivos importantes antes de executar scripts como esse.