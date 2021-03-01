from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Ctseq_Plot_Multiple_V0_1_0 = CommandToolBuilder(tool="ctseq_plot_multiple", base_command=["ctseq", "plot_multiple"], inputs=[ToolInput(tag="in_dir", input_type=File(optional=True), prefix="--dir", doc=InputDocumentation(doc="Path to directory where you want your plots to be\ncreated. If no path is given, ctseq will create the\nplots in your current working directory. Remember to\ninclude a file ending in '_directories.txt' containing\nthe paths of the directories containing the data you\nwant to plot")), ToolInput(tag="in_frag_info", input_type=File(optional=True), prefix="--fragInfo", doc=InputDocumentation(doc="Name of file containing your fragment info file for\nthese combined plots. If not in same directory as your\ncurrent working directory, please designate full path\nto the 'fragInfo' file. See documentation for more info\n(required)")), ToolInput(tag="in_name", input_type=File(optional=True), prefix="--name", doc=InputDocumentation(doc="Desired name to be used as the prefix for the file\nnames of these plots (required)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ctseq_Plot_Multiple_V0_1_0().translate("wdl", allow_empty_container=True)

