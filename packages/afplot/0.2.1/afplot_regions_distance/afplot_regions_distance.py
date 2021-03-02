from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, File

Afplot_Regions_Distance_V0_1_0 = CommandToolBuilder(tool="afplot_regions_distance", base_command=["afplot", "regions", "distance"], inputs=[ToolInput(tag="in_margin", input_type=Int(optional=True), prefix="--margin", doc=InputDocumentation(doc="Margin around regions to plot")), ToolInput(tag="in_region", input_type=String(optional=True), prefix="--region", doc=InputDocumentation(doc="Region string. Must be of format <contig:start-end>")), ToolInput(tag="in_region_file", input_type=File(optional=True), prefix="--region-file", doc=InputDocumentation(doc="Path to region file")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="Optional title for plot")), ToolInput(tag="in_output_dir", input_type=File(optional=True), prefix="--output-dir", doc=InputDocumentation(doc="Path to output directory  [required]")), ToolInput(tag="in_vcf", input_type=File(optional=True), prefix="--vcf", doc=InputDocumentation(doc="Path to input VCF file  [required]")), ToolInput(tag="in_color_palette", input_type=String(optional=True), prefix="--color-palette", doc=InputDocumentation(doc="The name of a color palette to pass to")), ToolInput(tag="in_seaborn_dot_set_palette", input_type=String(), position=0, doc=InputDocumentation(doc="--dpi INTEGER           DPI for output PNGs (default: 300)"))], outputs=[ToolOutput(tag="out_output_dir", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Path to output directory  [required]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Afplot_Regions_Distance_V0_1_0().translate("wdl", allow_empty_container=True)

