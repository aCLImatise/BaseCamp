from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Anvi_Script_Gen_Cpr_Classifier_V0_1_0 = CommandToolBuilder(tool="anvi_script_gen_CPR_classifier", base_command=["anvi-script-gen-CPR-classifier"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file name for the classifier.\n")), ToolInput(tag="in_matrix_file", input_type=String(), position=0, doc=InputDocumentation(doc="TAB-delimited matrix of CPR genome names, classes, and\npresence absence of single-copy genes. Headers of the\nfirst two rows should be 'genome', and 'class'. The\nrest of the rows shold be single-copy genes."))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file name for the classifier.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Script_Gen_Cpr_Classifier_V0_1_0().translate("wdl", allow_empty_container=True)

