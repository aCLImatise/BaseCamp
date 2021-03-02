from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Texthistogram_V0_1_0 = CommandToolBuilder(tool="textHistogram", base_command=["textHistogram"], inputs=[ToolInput(tag="in_binsize", input_type=Int(optional=True), prefix="-binSize", doc=InputDocumentation(doc="- Size of bins, default 1")), ToolInput(tag="in_max_bin_count", input_type=Int(optional=True), prefix="-maxBinCount", doc=InputDocumentation(doc="- Maximum # of bins, default 25")), ToolInput(tag="in_min_val", input_type=Int(optional=True), prefix="-minVal", doc=InputDocumentation(doc="- Minimum value to put in histogram, default 0")), ToolInput(tag="in_log", input_type=Boolean(optional=True), prefix="-log", doc=InputDocumentation(doc="- Do log transformation before plotting")), ToolInput(tag="in_no_star", input_type=Boolean(optional=True), prefix="-noStar", doc=InputDocumentation(doc="- Don't draw asterisks")), ToolInput(tag="in_col", input_type=Int(optional=True), prefix="-col", doc=InputDocumentation(doc="- Which column to use. Default 1")), ToolInput(tag="in_ave_col", input_type=String(optional=True), prefix="-aveCol", doc=InputDocumentation(doc="- A second column to average over. The averages\nwill be output in place of counts of primary column.")), ToolInput(tag="in_real", input_type=Boolean(optional=True), prefix="-real", doc=InputDocumentation(doc="- Data input are real values (default is integer)")), ToolInput(tag="in_autoscale", input_type=String(optional=True), prefix="-autoScale", doc=InputDocumentation(doc="- autoscale to N # of bins")), ToolInput(tag="in_prob_values", input_type=Boolean(optional=True), prefix="-probValues", doc=InputDocumentation(doc="- show prob-Values (density and cum.distr.) (sets -noStar too)")), ToolInput(tag="in_freq", input_type=Boolean(optional=True), prefix="-freq", doc=InputDocumentation(doc="- show frequences instead of counts")), ToolInput(tag="in_skip", input_type=Int(optional=True), prefix="-skip", doc=InputDocumentation(doc="- skip N lines before starting, default 0"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Texthistogram_V0_1_0().translate("wdl", allow_empty_container=True)

