from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Directory, Float, Boolean

Checkm_Coding_Plot_V0_1_0 = CommandToolBuilder(tool="checkm_coding_plot", base_command=["checkm", "coding_plot"], inputs=[ToolInput(tag="in_image_type", input_type=String(optional=True), prefix="--image_type", doc=InputDocumentation(doc="desired image type (default: png)")), ToolInput(tag="in_dpi", input_type=Int(optional=True), prefix="--dpi", doc=InputDocumentation(doc="desired DPI of output image (default: 600)")), ToolInput(tag="in_font_size", input_type=Int(optional=True), prefix="--font_size", doc=InputDocumentation(doc="Desired font size (default: 8)")), ToolInput(tag="in_extension", input_type=Directory(optional=True), prefix="--extension", doc=InputDocumentation(doc="extension of bins (other files in directory are ignored) (default: fna)")), ToolInput(tag="in_width", input_type=Float(optional=True), prefix="--width", doc=InputDocumentation(doc="width of output image (default: 6.5)")), ToolInput(tag="in_height", input_type=Float(optional=True), prefix="--height", doc=InputDocumentation(doc="height of output image (default: 3.5)")), ToolInput(tag="in_cd_window_size", input_type=Int(optional=True), prefix="--cd_window_size", doc=InputDocumentation(doc="window size used to calculate CD histogram (default: 10000)")), ToolInput(tag="in_cd_bin_width", input_type=Float(optional=True), prefix="--cd_bin_width", doc=InputDocumentation(doc="width of CD bars in histogram (default: 0.01)")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="suppress console output")), ToolInput(tag="in_results_dir", input_type=String(), position=0, doc=InputDocumentation(doc="directory specified during qa command")), ToolInput(tag="in_bin_dir", input_type=String(), position=1, doc=InputDocumentation(doc="directory containing bins to plot (fasta format)")), ToolInput(tag="in_output_dir", input_type=String(), position=2, doc=InputDocumentation(doc="directory to hold plots")), ToolInput(tag="in_dist_value", input_type=String(), position=3, doc=InputDocumentation(doc="reference distribution(s) to plot; integer between 0 and 100"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Checkm_Coding_Plot_V0_1_0().translate("wdl", allow_empty_container=True)

