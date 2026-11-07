$Bucket = "demo-retail-migration-lab-2026-12345"
$Source = "D:\AWS-Migration-Lab\data"
Write-Host "Starting AWS Backup..."
aws s3 sync $Source "s3://$Bucket/data/"
if ($LASTEXITCODE -ne 0) {
Write-Host "Backup failed"
exit 1
}
Write-Host "Backup completed successfully"