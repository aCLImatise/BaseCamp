from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Add_Gff_Info_Counts_V0_1_0 = CommandToolBuilder(tool="add_gff_info_counts", base_command=["add-gff-info", "counts"], inputs=[ToolInput(tag="in_verbose", input_type=String(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Sample names, in the same order as the count files\n[required]")), ToolInput(tag="in_count_files", input_type=File(optional=True), prefix="--count-files", doc=InputDocumentation(doc="Count file(s)  [required]")), ToolInput(tag="in_fp_kms", input_type=Boolean(optional=True), prefix="--fpkms", doc=InputDocumentation(doc="If the counts are FPKMS")), ToolInput(tag="in_feature_counts", input_type=Boolean(optional=True), prefix="--featureCounts", doc=InputDocumentation(doc="If the counts files are from featureCounts")), ToolInput(tag="in_progress", input_type=Boolean(optional=True), prefix="--progress", doc=InputDocumentation(doc="Shows Progress Bar")), ToolInput(tag="in_input_file", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Add_Gff_Info_Counts_V0_1_0().translate("wdl")

