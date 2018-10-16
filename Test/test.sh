SCRIPTPATH="$( cd "$(dirname "$0")"; cd .. ; pwd -P )"

i=0

#zu

docker run  -v "$SCRIPTPATH":"/APPIAN" tffunck/appian:latest bash -c "python /APPIAN/Launcher.py  -s /APPIAN/Test/test_gabriel -t /APPIAN/Test/out_test_zu --pvc-fwhm 3 3 3 --sessions zu s002"

#CIMBI
#docker run -v "$SCRIPTPATH":"/APPIAN" tffunck/appian:latest bash -c "python2.7 /APPIAN/Launcher.py --no-pvc --user-brainmask --pvc-label-space stereo  --pvc-label-img antsAtropos  --tka-label-space stereo --tka-method 'lp' --tka-label-img antsAtropos --tka-labels-brain-only --tka-labels-ones-only  --tka-label 3 --tka-label-erosion 5 --results-label-space stereo  --results-labels-brain-only --results-label 2 --results-label-img antsAtropos --sourcedir /APPIAN/Test/test_data --targetdir /APPIAN/Test/out_test_cimbi  --sessions 01  --fwhm 3 3 3  01";


#Flumazenil
#docker run -v "$SCRIPTPATH":"/APPIAN" tffunck/appian:latest bash -c "python2.7 /APPIAN/Launcher.py --no-pvc --no-results-report --user-brainmask --user-t1mni  --pvc-label-space stereo  --pvc-label-img antsAtropos  --tka-label-space stereo --tka-method 'lp' --tka-label-img antsAtropos --tka-labels-brain-only --tka-labels-ones-only  --tka-label 3 --tka-label-erosion 5 --results-label-space stereo  --results-labels-brain-only --results-label 2 --results-label-img antsAtropos --sourcedir /APPIAN/Test/test_data_fmz --targetdir /APPIAN/Test/out_test_fmz  --tasks 1 --sessions I  --pet-scanner HRRT  01";

