from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Find_Footprints_Sh_V0_1_0 = CommandToolBuilder(tool="find_footprints.sh", base_command=["find_footprints.sh"], inputs=[ToolInput(tag="in_bam_file", input_type=String(), position=0, doc=InputDocumentation(doc="\")), ToolInput(tag="in_chrom_sizes", input_type=String(), position=1, doc=InputDocumentation(doc="\")), ToolInput(tag="in_motif_coords", input_type=String(), position=2, doc=InputDocumentation(doc="\")), ToolInput(tag="in_genome_fast_a", input_type=String(), position=3, doc=InputDocumentation(doc="\")), ToolInput(tag="in_factor_name", input_type=String(), position=4, doc=InputDocumentation(doc="\")), ToolInput(tag="in_bias_file", input_type=String(), position=5, doc=InputDocumentation(doc="\")), ToolInput(tag="in_peak_file", input_type=String(), position=6, doc=InputDocumentation(doc="\")), ToolInput(tag="in_background", input_type=String(), position=0, doc=InputDocumentation(doc="\")), ToolInput(tag="in_fixed_bg", input_type=String(), position=1, doc=InputDocumentation(doc="The arguments are explained below:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Find_Footprints_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

