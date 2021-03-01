from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String, Boolean

Phylophlan_Draw_Metagenomic_V0_1_0 = CommandToolBuilder(tool="phylophlan_draw_metagenomic", base_command=["phylophlan_draw_metagenomic"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="The input file generated from\nphylophlan_metagenomic.py (default: None)")), ToolInput(tag="in_map", input_type=File(optional=True), prefix="--map", doc=InputDocumentation(doc="A mapping file that maps each bin to its metagenome\n(default: None)")), ToolInput(tag="in_top", input_type=Int(optional=True), prefix="--top", doc=InputDocumentation(doc="The number of SGBs to display in the figure (default:\n20)")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="Prefix output files (default: output_heatmap)")), ToolInput(tag="in_separator", input_type=File(optional=True), prefix="--separator", doc=InputDocumentation(doc="The separator used in the mapping file (default: )")), ToolInput(tag="in_dpi", input_type=Int(optional=True), prefix="--dpi", doc=InputDocumentation(doc="Dpi resolution of the images (default: 200)")), ToolInput(tag="in_images_output_format", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="Images output format (default: svg)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Prints more stuff (default: False)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phylophlan_Draw_Metagenomic_V0_1_0().translate("wdl", allow_empty_container=True)

