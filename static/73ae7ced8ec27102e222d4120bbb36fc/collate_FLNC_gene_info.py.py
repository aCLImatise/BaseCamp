from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Collate_Flnc_Gene_Info_Py_V0_1_0 = CommandToolBuilder(tool="collate_FLNC_gene_info.py", base_command=["collate_FLNC_gene_info.py"], inputs=[ToolInput(tag="in_on_target_filename", input_type=File(optional=True), prefix="--ontarget_filename", doc=InputDocumentation(doc="(Optional) on target information text")), ToolInput(tag="in_ded_up_orf_prefix", input_type=String(optional=True), prefix="--dedup_ORF_prefix", doc=InputDocumentation(doc="(Optional) dedup-ed ORF group prefix, must have\n<pre>.faa and <pre>.group.txt")), ToolInput(tag="in_no_extra_base", input_type=Boolean(optional=True), prefix="--no-extra-base", doc=InputDocumentation(doc="Drop all reads where there are extra bases")), ToolInput(tag="in_is_clustered", input_type=Boolean(optional=True), prefix="--is_clustered", doc=InputDocumentation(doc="group.txt contains post-UMI clustering result")), ToolInput(tag="in_positional_arguments", input_type=String(), position=0, doc=InputDocumentation(doc="positional arguments:")), ToolInput(tag="in_group_filename", input_type=String(), position=1, doc=InputDocumentation(doc="Collapse .group.txt")), ToolInput(tag="in_csv_filename", input_type=String(), position=2, doc=InputDocumentation(doc="Trimmed UMI/BC CSV info")), ToolInput(tag="in_class_filename", input_type=String(), position=3, doc=InputDocumentation(doc="SQANTI classification.txt")), ToolInput(tag="in_output_filename", input_type=String(), position=4, doc=InputDocumentation(doc="Output filename"))], outputs=[], container="quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Collate_Flnc_Gene_Info_Py_V0_1_0().translate("wdl")

