from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Color_Chrs_Pl_V0_1_0 = CommandToolBuilder(tool="color_chrs.pl", base_command=["color-chrs.pl"], inputs=[ToolInput(tag="in_colors", input_type=File(optional=True), prefix="--colors", doc=InputDocumentation(doc="File with list of 'chr hap color'.")), ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Prefix of output files.")), ToolInput(tag="in_output_dot_dat", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bcftools:1.12--h3f113a9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Color_Chrs_Pl_V0_1_0().translate("wdl")

