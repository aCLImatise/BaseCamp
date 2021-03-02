from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Spectrast_Updateirts_Py_V0_1_0 = CommandToolBuilder(tool="spectrast_updateiRTs.py", base_command=["spectrast_updateiRTs.py"], inputs=[ToolInput(tag="in_auto_align", input_type=Boolean(optional=True), prefix="--auto-align", doc=InputDocumentation(doc="Calculates automatically the alignment models based on the internal identifications of the calibration peptides")), ToolInput(tag="in_irtmodelsfile__irtmodel", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="iRT_models_file    --irtmodel    File with the iRT models")), ToolInput(tag="in_irtpeptidesfile__irtpeptides", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="iRT_peptides_file    --irtpeptides File containing the peptides and their iRTs to do the linear model alignment.")), ToolInput(tag="in_timescale_options_minutes", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="time-scale            Options: minutes, seconds. Default: seconds.")), ToolInput(tag="in_spectra_st_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Spectrast_Updateirts_Py_V0_1_0().translate("wdl", allow_empty_container=True)

