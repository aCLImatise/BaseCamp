from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, String

Plot_Vcfstats_V0_1_0 = CommandToolBuilder(tool="plot_vcfstats", base_command=["plot-vcfstats"], inputs=[ToolInput(tag="in_merge", input_type=Boolean(optional=True), prefix="--merge", doc=InputDocumentation(doc="Merge vcfstats files to STDOUT, skip plotting.")), ToolInput(tag="in_prefix", input_type=Directory(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Output directory.")), ToolInput(tag="in_no_pdf", input_type=Boolean(optional=True), prefix="--no-PDF", doc=InputDocumentation(doc="Skip the PDF creation step.")), ToolInput(tag="in_raster_ize", input_type=Boolean(optional=True), prefix="--rasterize", doc=InputDocumentation(doc="Rasterize PDF images for fast rendering, the default and opposite of -v.")), ToolInput(tag="in_sample_names", input_type=Boolean(optional=True), prefix="--sample-names", doc=InputDocumentation(doc="Use sample names for xticks rather than numeric IDs.")), ToolInput(tag="in_title", input_type=String(optional=True), prefix="--title", doc=InputDocumentation(doc="Identify files by these titles in plots. Can be given multiple times.")), ToolInput(tag="in_main_title", input_type=String(optional=True), prefix="--main-title", doc=InputDocumentation(doc="Main title for the PDF.")), ToolInput(tag="in_vectors", input_type=Boolean(optional=True), prefix="--vectors", doc=InputDocumentation(doc="Generate vector graphics for PDF images, the opposite of -r"))], outputs=[ToolOutput(tag="out_prefix", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_prefix", type_hint=File()), doc=OutputDocumentation(doc="Output directory."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plot_Vcfstats_V0_1_0().translate("wdl", allow_empty_container=True)

