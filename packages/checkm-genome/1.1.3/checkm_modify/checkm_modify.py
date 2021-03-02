from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Checkm_Modify_V0_1_0 = CommandToolBuilder(tool="checkm_modify", base_command=["checkm", "modify"], inputs=[ToolInput(tag="in_add", input_type=String(optional=True), prefix="--add", doc=InputDocumentation(doc="ID of sequence to add to bin (may specify multiple times)")), ToolInput(tag="in_remove", input_type=String(optional=True), prefix="--remove", doc=InputDocumentation(doc="ID of sequence to remove from bin (may specify multiple times)")), ToolInput(tag="in_outlier_file", input_type=File(optional=True), prefix="--outlier_file", doc=InputDocumentation(doc="remove all sequences marked as outliers in the bin (see outlier command)")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="suppress console output")), ToolInput(tag="in_seq_file", input_type=String(), position=0, doc=InputDocumentation(doc="sequences used to generate bins (fasta format)")), ToolInput(tag="in_bin_file", input_type=String(), position=1, doc=InputDocumentation(doc="bin to be modified")), ToolInput(tag="in_output_file", input_type=String(), position=2, doc=InputDocumentation(doc="modified bin"))], outputs=[], container="quay.io/biocontainers/checkm-genome:1.1.3--py_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Checkm_Modify_V0_1_0().translate("wdl")

