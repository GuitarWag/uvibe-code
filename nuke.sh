#!/bin/bash
# uvibe-code: When AI-generated code has gone too far
# USE AT YOUR OWN RISK - This deletes everything in the current directory

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
BLINK='\033[5m'
NC='\033[0m' # No Color

clear

# ASCII Art
echo -e "${RED}"
cat << "EOF"

 ██    ██ ██    ██ ██ ██████  ███████        ██████  ██████  ██████  ███████
 ██    ██ ██    ██ ██ ██   ██ ██            ██      ██    ██ ██   ██ ██
 ██    ██ ██    ██ ██ ██████  █████   █████ ██      ██    ██ ██   ██ █████
 ██    ██  ██  ██  ██ ██   ██ ██            ██      ██    ██ ██   ██ ██
  ██████    ████   ██ ██████  ███████        ██████  ██████  ██████  ███████

EOF
echo -e "${NC}"

echo -e "${YELLOW}══════════════════════════════════════════════════════════${NC}"
echo -e "${RED}        🔥 PROJECT ANNIHILATION SYSTEM 🔥${NC}"
echo -e "${YELLOW}══════════════════════════════════════════════════════════${NC}"
echo ""

# Sarcastic intro messages (random)
INTROS=(
    "So... the AI 'helped' you again, huh?"
    "Let me guess... 47 node_modules folders deep?"
    "Claude promised it would work 'out of the box'... it lied."
    "Cursor autocompleted your entire career into oblivion?"
    "Gemini said 'trust me bro' and you did. Rookie mistake."
    "Copilot wrote code that even Copilot can't explain."
    "The AI mass-created files and made you depressed didn't it?"
)
RANDOM_INTRO=${INTROS[$RANDOM % ${#INTROS[@]}]}
echo -e "${CYAN}$RANDOM_INTRO${NC}"
echo ""

# Dramatic warning
echo -e "${RED}${BLINK}⚠️  WARNING: THIS WILL DESTROY EVERYTHING ⚠️${NC}"
echo -e "${WHITE}Current directory: ${YELLOW}$(pwd)${NC}"
echo ""

# Count what's about to die
FILE_COUNT=$(find . -maxdepth 1 -type f | wc -l | tr -d ' ')
DIR_COUNT=$(find . -maxdepth 1 -type d | wc -l | tr -d ' ')
echo -e "${MAGENTA}📁 Files about to meet their maker: ${WHITE}$FILE_COUNT${NC}"
echo -e "${MAGENTA}📂 Directories facing extinction: ${WHITE}$((DIR_COUNT - 1))${NC}"
echo ""

# First confirmation
echo -e "${YELLOW}Are you ABSOLUTELY sure? This isn't like 'undo' in VS Code.${NC}"
echo -n "Type 'yes' to continue (or anything else to chicken out): "
read confirm < /dev/tty

if [ "$confirm" != "yes" ]; then
    echo ""
    echo -e "${GREEN}😌 Wise choice. Maybe give the AI another chance.${NC}"
    echo -e "${CYAN}Or don't. I'm a script, not your therapist.${NC}"
    exit 0
fi

echo ""
echo -e "${RED}Oh, you're serious? Okay then...${NC}"
echo ""

# Second confirmation (because drama)
echo -e "${YELLOW}Final chance. Type 'NUKE IT' to proceed:${NC}"
echo -n "> "
read final_confirm < /dev/tty

if [ "$final_confirm" != "NUKE IT" ]; then
    echo ""
    echo -e "${GREEN}That's not 'NUKE IT'. I'll take that as cold feet.${NC}"
    echo -e "${CYAN}Your AI-generated spaghetti code lives another day.${NC}"
    exit 0
fi

echo ""
echo -e "${MAGENTA}╔══════════════════════════════════════════╗${NC}"
echo -e "${MAGENTA}║   ${RED}INITIATING RAGE QUIT SEQUENCE...${MAGENTA}      ║${NC}"
echo -e "${MAGENTA}╚══════════════════════════════════════════╝${NC}"
echo ""

# Dramatic countdown with loading bar
for i in 5 4 3 2 1; do
    echo -ne "${RED}T-minus $i... ${NC}"
    for j in $(seq 1 $((6-i))); do
        echo -ne "${YELLOW}█${NC}"
        sleep 0.1
    done
    echo ""
    sleep 0.5
done

echo ""
echo -e "${RED}💥 BOOM 💥${NC}"
echo ""

# Progress bar for deletion
echo -e "${CYAN}Deleting AI's hopes and dreams...${NC}"
echo -ne "${YELLOW}["
for i in $(seq 1 30); do
    echo -ne "█"
    sleep 0.05
done
echo -e "]${NC} ${GREEN}100%${NC}"
echo ""

# Sarcastic deletion messages
MESSAGES=(
    "Deleting mass_created_file_1.js... goodbye, sweet prince"
    "Removing node_modules... this might take until heat death of universe"
    "Purging AI hallucinations from existence..."
    "Yeeting components into the void..."
    "Erasing 47 different config files the AI thought you needed..."
    "Removing 'temporary' files from 6 months ago..."
    "Deleting code comments that say 'TODO: fix later'..."
    "Obliterating that one file nobody knows what it does..."
)

for msg in "${MESSAGES[@]}"; do
    echo -e "${WHITE}> ${CYAN}$msg${NC}"
    sleep 0.3
done

echo ""

# Actually delete stuff
rm -rf ./* 2>/dev/null
rm -rf ./.[!.]* 2>/dev/null

# Final messages
echo -e "${GREEN}╔══════════════════════════════════════════════════════════╗${NC}"
echo -e "${GREEN}║                                                          ║${NC}"
echo -e "${GREEN}║   ${WHITE}✨ DESTRUCTION COMPLETE ✨${GREEN}                           ║${NC}"
echo -e "${GREEN}║                                                          ║${NC}"
echo -e "${GREEN}╚══════════════════════════════════════════════════════════╝${NC}"
echo ""

# Random closing messages
CLOSINGS=(
    "The slate is clean. Your sins are forgiven."
    "It's gone. All of it. How does freedom feel?"
    "Project deleted. Sanity restored. Probably."
    "The AI code is gone. But the trauma remains."
    "Clean slate achieved. Time to make the same mistakes again!"
    "Done. Now go touch grass before opening VS Code again."
)
RANDOM_CLOSING=${CLOSINGS[$RANDOM % ${#CLOSINGS[@]}]}
echo -e "${YELLOW}$RANDOM_CLOSING${NC}"
echo ""
echo -e "${MAGENTA}🎵 Another one bites the dust 🎵${NC}"
echo ""
