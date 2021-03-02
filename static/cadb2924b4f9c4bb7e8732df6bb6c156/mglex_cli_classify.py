from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Float, String

Mglex_Cli_Classify_V0_1_0 = CommandToolBuilder(tool="mglex_cli_classify", base_command=["mglex-cli", "classify"], inputs=[ToolInput(tag="in_normalize", input_type=Boolean(optional=True), prefix="--normalize", doc=InputDocumentation(doc="Output class posterior instead of the raw likelihood")), ToolInput(tag="in_model", input_type=File(optional=True), prefix="--model", doc=InputDocumentation(doc="Pre-calculated classificaton model file")), ToolInput(tag="in_ab_coverage", input_type=File(optional=True), prefix="--abcoverage", doc=InputDocumentation(doc="Absolute mean coverage data file for Poisson Model")), ToolInput(tag="in_diff_coverage", input_type=File(optional=True), prefix="--diffcoverage", doc=InputDocumentation(doc="Differential mean coverage data file for Multinomial Model")), ToolInput(tag="in_composition", input_type=File(optional=True), prefix="--composition", doc=InputDocumentation(doc="Compositional data (numeric) file for Naive Bayes Model")), ToolInput(tag="in_labels", input_type=File(optional=True), prefix="--labels", doc=InputDocumentation(doc="Label-type data file (e.g. a taxonomic path) for Hierarchical Naive Bayes Model")), ToolInput(tag="in_beta", input_type=Float(optional=True), prefix="--beta", doc=InputDocumentation(doc="Beta correction factor (e.g. determined via MSE evaluation); default 1.0")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--logfile", doc=InputDocumentation(doc="File for logging")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_classify", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mglex_Cli_Classify_V0_1_0().translate("wdl", allow_empty_container=True)

