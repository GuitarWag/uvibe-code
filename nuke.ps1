# uvibe-code: When AI-generated code has gone too far
# USE AT YOUR OWN RISK - This deletes everything in the current directory

Clear-Host

# ASCII Art
Write-Host @"

 ██    ██ ██    ██ ██ ██████  ███████        ██████  ██████  ██████  ███████
 ██    ██ ██    ██ ██ ██   ██ ██            ██      ██    ██ ██   ██ ██
 ██    ██ ██    ██ ██ ██████  █████   █████ ██      ██    ██ ██   ██ █████
 ██    ██  ██  ██  ██ ██   ██ ██            ██      ██    ██ ██   ██ ██
  ██████    ████   ██ ██████  ███████        ██████  ██████  ██████  ███████

"@ -ForegroundColor Red

Write-Host "══════════════════════════════════════════════════════════" -ForegroundColor Yellow
Write-Host "        🔥 PROJECT ANNIHILATION SYSTEM 🔥" -ForegroundColor Red
Write-Host "══════════════════════════════════════════════════════════" -ForegroundColor Yellow
Write-Host ""

# Sarcastic intro messages (random)
$intros = @(
    "So... the AI 'helped' you again, huh?",
    "Let me guess... 47 node_modules folders deep?",
    "Claude promised it would work 'out of the box'... it lied.",
    "Cursor autocompleted your entire career into oblivion?",
    "Gemini said 'trust me bro' and you did. Rookie mistake.",
    "Copilot wrote code that even Copilot can't explain.",
    "The AI mass-created files and made you depressed didn't it?"
)
$randomIntro = $intros | Get-Random
Write-Host $randomIntro -ForegroundColor Cyan
Write-Host ""

# Dramatic warning
Write-Host "⚠️  WARNING: THIS WILL DESTROY EVERYTHING ⚠️" -ForegroundColor Red -BackgroundColor Black
Write-Host "Current directory: " -NoNewline -ForegroundColor White
Write-Host (Get-Location) -ForegroundColor Yellow
Write-Host ""

# Count what's about to die
$fileCount = (Get-ChildItem -File -ErrorAction SilentlyContinue | Measure-Object).Count
$dirCount = (Get-ChildItem -Directory -ErrorAction SilentlyContinue | Measure-Object).Count
Write-Host "📁 Files about to meet their maker: " -NoNewline -ForegroundColor Magenta
Write-Host $fileCount -ForegroundColor White
Write-Host "📂 Directories facing extinction: " -NoNewline -ForegroundColor Magenta
Write-Host $dirCount -ForegroundColor White
Write-Host ""

# First confirmation
Write-Host "Are you ABSOLUTELY sure? This isn't like 'undo' in VS Code." -ForegroundColor Yellow
$confirm = Read-Host "Type 'yes' to continue (or anything else to chicken out)"

if ($confirm -ne "yes") {
    Write-Host ""
    Write-Host "😌 Wise choice. Maybe give the AI another chance." -ForegroundColor Green
    Write-Host "Or don't. I'm a script, not your therapist." -ForegroundColor Cyan
    exit
}

Write-Host ""
Write-Host "Oh, you're serious? Okay then..." -ForegroundColor Red
Write-Host ""

# Second confirmation (because drama)
Write-Host "Final chance. Type 'NUKE IT' to proceed:" -ForegroundColor Yellow
$finalConfirm = Read-Host ">"

if ($finalConfirm -ne "NUKE IT") {
    Write-Host ""
    Write-Host "That's not 'NUKE IT'. I'll take that as cold feet." -ForegroundColor Green
    Write-Host "Your AI-generated spaghetti code lives another day." -ForegroundColor Cyan
    exit
}

Write-Host ""
Write-Host "╔══════════════════════════════════════════╗" -ForegroundColor Magenta
Write-Host "║   " -NoNewline -ForegroundColor Magenta
Write-Host "INITIATING RAGE QUIT SEQUENCE..." -NoNewline -ForegroundColor Red
Write-Host "      ║" -ForegroundColor Magenta
Write-Host "╚══════════════════════════════════════════╝" -ForegroundColor Magenta
Write-Host ""

# Dramatic countdown with loading bar
for ($i = 5; $i -ge 1; $i--) {
    Write-Host "T-minus $i... " -NoNewline -ForegroundColor Red
    for ($j = 1; $j -le (6 - $i); $j++) {
        Write-Host "█" -NoNewline -ForegroundColor Yellow
        Start-Sleep -Milliseconds 100
    }
    Write-Host ""
    Start-Sleep -Milliseconds 500
}

Write-Host ""
Write-Host "💥 BOOM 💥" -ForegroundColor Red
Write-Host ""

# Progress bar for deletion
Write-Host "Deleting AI's hopes and dreams..." -ForegroundColor Cyan
Write-Host "[" -NoNewline -ForegroundColor Yellow
for ($i = 1; $i -le 30; $i++) {
    Write-Host "█" -NoNewline -ForegroundColor Green
    Start-Sleep -Milliseconds 50
}
Write-Host "] " -NoNewline -ForegroundColor Yellow
Write-Host "100%" -ForegroundColor Green
Write-Host ""

# Sarcastic deletion messages
$messages = @(
    "Deleting mass_created_file_1.js... goodbye, sweet prince",
    "Removing node_modules... this might take until heat death of universe",
    "Purging AI hallucinations from existence...",
    "Yeeting components into the void...",
    "Erasing 47 different config files the AI thought you needed...",
    "Removing 'temporary' files from 6 months ago...",
    "Deleting code comments that say 'TODO: fix later'...",
    "Obliterating that one file nobody knows what it does..."
)

foreach ($msg in $messages) {
    Write-Host "> " -NoNewline -ForegroundColor White
    Write-Host $msg -ForegroundColor Cyan
    Start-Sleep -Milliseconds 300
}

Write-Host ""

# Actually delete stuff (exclude the script itself)
$scriptName = $MyInvocation.MyCommand.Name
Get-ChildItem -Path . -Exclude $scriptName -Force -ErrorAction SilentlyContinue | Remove-Item -Recurse -Force -ErrorAction SilentlyContinue

# Final messages
Write-Host "╔══════════════════════════════════════════════════════════╗" -ForegroundColor Green
Write-Host "║                                                          ║" -ForegroundColor Green
Write-Host "║   " -NoNewline -ForegroundColor Green
Write-Host "✨ DESTRUCTION COMPLETE ✨" -NoNewline -ForegroundColor White
Write-Host "                           ║" -ForegroundColor Green
Write-Host "║                                                          ║" -ForegroundColor Green
Write-Host "╚══════════════════════════════════════════════════════════╝" -ForegroundColor Green
Write-Host ""

# Random closing messages
$closings = @(
    "The slate is clean. Your sins are forgiven.",
    "It's gone. All of it. How does freedom feel?",
    "Project deleted. Sanity restored. Probably.",
    "The AI code is gone. But the trauma remains.",
    "Clean slate achieved. Time to make the same mistakes again!",
    "Done. Now go touch grass before opening VS Code again."
)
$randomClosing = $closings | Get-Random
Write-Host $randomClosing -ForegroundColor Yellow
Write-Host ""
Write-Host "🎵 Another one bites the dust 🎵" -ForegroundColor Magenta
Write-Host ""
