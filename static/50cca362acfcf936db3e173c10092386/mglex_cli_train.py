from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Mglex_Cli_Train_V0_1_0 = CommandToolBuilder(tool="mglex_cli_train", base_command=["mglex-cli", "train"], inputs=[ToolInput(tag="in_responsibility", input_type=File(optional=True), prefix="--responsibility", doc=InputDocumentation(doc="Responsibility (weight) matrix file; default standard input")), ToolInput(tag="in_out_model", input_type=File(optional=True), prefix="--outmodel", doc=InputDocumentation(doc="Output classificaton model file")), ToolInput(tag="in_weight", input_type=File(optional=True), prefix="--weight", doc=InputDocumentation(doc="Weights (sequence length) file")), ToolInput(tag="in_ab_coverage", input_type=File(optional=True), prefix="--abcoverage", doc=InputDocumentation(doc="Absolute mean coverage data file for Poisson Model")), ToolInput(tag="in_diff_coverage", input_type=File(optional=True), prefix="--diffcoverage", doc=InputDocumentation(doc="Differential mean coverage data file for Multinomial Model")), ToolInput(tag="in_composition", input_type=File(optional=True), prefix="--composition", doc=InputDocumentation(doc="Compositional data (numeric) file for Naive Bayes Model")), ToolInput(tag="in_labels", input_type=File(optional=True), prefix="--labels", doc=InputDocumentation(doc="Label-type data file (e.g. a taxonomic path) for Hierarchical Naive Bayes Model")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--logfile", doc=InputDocumentation(doc="File for logging")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_train", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out_model", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_model", type_hint=File()), doc=OutputDocumentation(doc="Output classificaton model file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mglex_Cli_Train_V0_1_0().translate("wdl", allow_empty_container=True)

