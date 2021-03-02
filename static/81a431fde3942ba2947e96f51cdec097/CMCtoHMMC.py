from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Cmctohmmc_V0_1_0 = CommandToolBuilder(tool="CMCtoHMMC", base_command=["CMCtoHMMC"], inputs=[ToolInput(tag="in_cm_compare_result_file", input_type=File(optional=True), prefix="--cmcompareresultfile", doc=InputDocumentation(doc="Path to CMCompare result file")), ToolInput(tag="in_cm_models_file", input_type=File(optional=True), prefix="--cmmodelsfile", doc=InputDocumentation(doc="Path to covariance model file")), ToolInput(tag="in_hmm_models_file", input_type=File(optional=True), prefix="--hmmmodelsfile", doc=InputDocumentation(doc="Path to hmm model file")), ToolInput(tag="in_numeric_version", input_type=Boolean(optional=True), prefix="--numeric-version", doc=InputDocumentation(doc="Print just the version number")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Loud verbosity")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Quiet verbosity"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cmctohmmc_V0_1_0().translate("wdl", allow_empty_container=True)

