from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Add_Gff_Info_Cov_Samtools_V0_1_0 = CommandToolBuilder(tool="add_gff_info_cov_samtools", base_command=["add-gff-info", "cov_samtools"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="if one or more samples are provided, the average\ncoverage is calculated")), ToolInput(tag="in_samples", input_type=File(optional=True), prefix="--samples", doc=InputDocumentation(doc="Sample name, will add a `sample_cov` in the GFF\nfile. If not passed, the attribute will be `cov`")), ToolInput(tag="in_depths", input_type=File(optional=True), prefix="--depths", doc=InputDocumentation(doc="`samtools depth -aa` file  [required]")), ToolInput(tag="in_num_seqs", input_type=Int(optional=True), prefix="--num-seqs", doc=InputDocumentation(doc="Number of sequences to update the log. If 0, no\nmessage is logged  [default: 0]")), ToolInput(tag="in_progress", input_type=Boolean(optional=True), prefix="--progress", doc=InputDocumentation(doc="Shows Progress Bar")), ToolInput(tag="in_input_file", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Add_Gff_Info_Cov_Samtools_V0_1_0().translate("wdl")

