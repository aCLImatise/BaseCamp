from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String, Int

Pm4Ngs_Chipseq_V0_1_0 = CommandToolBuilder(tool="pm4ngs_chipseq", base_command=["pm4ngs-chipseq"], inputs=[ToolInput(tag="in_sample_sheet", input_type=File(optional=True), prefix="--sample-sheet", doc=InputDocumentation(doc="Sample sheet CSV file with columns:\nsample_name,file,condition,replicate")), ToolInput(tag="in_config_file", input_type=File(optional=True), prefix="--config-file", doc=InputDocumentation(doc="User configuration file with project description")), ToolInput(tag="in_copy_raw_data", input_type=Boolean(optional=True), prefix="--copy-rawdata", doc=InputDocumentation(doc="Copy the raw data defined in the sample table to the\nproject/data/DATASET folder\n")), ToolInput(tag="in_generate", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_pm_four_ngs", input_type=Int(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_project", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_for", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_chip_seq", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_data", input_type=String(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_analysis", input_type=String(), position=7, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/pm4ngs:0.0.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pm4Ngs_Chipseq_V0_1_0().translate("wdl")

