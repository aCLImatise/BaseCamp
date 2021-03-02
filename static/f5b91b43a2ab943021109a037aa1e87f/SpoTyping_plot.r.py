from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Spotyping_Plot_R_V0_1_0 = CommandToolBuilder(tool="SpoTyping_plot.r", base_command=["SpoTyping_plot.r"], inputs=[ToolInput(tag="in_more_options", input_type=Boolean(optional=True), prefix="-MORE_OPTIONS", doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-OPTIONS", doc=InputDocumentation(doc="")), ToolInput(tag="in_nobs", input_type=String(), position=0, doc=InputDocumentation(doc="The following object is masked from 'package:utils':")), ToolInput(tag="in_object_dot_size", input_type=Int(), position=1, doc=InputDocumentation(doc="The following object is masked from 'package:base':")), ToolInput(tag="in_starts_with", input_type=String(), position=2, doc=InputDocumentation(doc="/usr/local/lib/R/library/gdata/perl/xls2csv.pl version [unknown] calling Getopt::Std::getopts (version 1.12 [paranoid]),"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Spotyping_Plot_R_V0_1_0().translate("wdl", allow_empty_container=True)

