from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Ctseq_Plot_V0_1_0 = CommandToolBuilder(tool="ctseq_plot", base_command=["ctseq", "plot"], inputs=[ToolInput(tag="in_dir", input_type=File(optional=True), prefix="--dir", doc=InputDocumentation(doc="Path to directory where you have your plot input files.\nIf no '--dir' is specified, ctseq will look in your\ncurrent directory.")), ToolInput(tag="in_frag_info", input_type=File(optional=True), prefix="--fragInfo", doc=InputDocumentation(doc="Name of file containing your fragment info file for\nthis sequencing run. If not in same directory as your\nplot input files, please designate full path to the\n'fragInfo' file. See documentation for more info\n(required)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ctseq_Plot_V0_1_0().translate("wdl", allow_empty_container=True)

