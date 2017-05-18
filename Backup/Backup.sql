
USE s17guest36;
GO
BACKUP DATABASE s17guest36
    TO DISK = '\s17guest36.Bak'
      WITH FORMAT,
        MEDIANAME = 'Z_SQLServerBackups',
        NAME = 'Full Backup of s17guest36';
GO