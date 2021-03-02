from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Directory, String

Metachip_Filter_Hgt_V0_1_0 = CommandToolBuilder(tool="MetaCHIP_filter_HGT", base_command=["MetaCHIP", "filter_HGT"], inputs=[ToolInput(tag="in_txt_file_containing", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="txt file containing detected HGTs, e.g.\n[prefix]_[ranks]_detected_HGTs.txt")), ToolInput(tag="in_hgts_detected_levels", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="HGTs detected at least n levels, 2 <= n <= 5")), ToolInput(tag="in_plot", input_type=Directory(optional=True), prefix="-plot", doc=InputDocumentation(doc="flanking plots folder")), ToolInput(tag="in_ffn", input_type=String(optional=True), prefix="-ffn", doc=InputDocumentation(doc="get nucleotide sequences for qualified HGTs")), ToolInput(tag="in_faa", input_type=String(optional=True), prefix="-faa", doc=InputDocumentation(doc="get amino acid sequences for qualified HGTs"))], outputs=[], container="quay.io/biocontainers/metachip:1.10.3--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metachip_Filter_Hgt_V0_1_0().translate("wdl")

