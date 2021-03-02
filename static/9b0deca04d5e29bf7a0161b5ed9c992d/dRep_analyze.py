from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Drep_Analyze_V0_1_0 = CommandToolBuilder(tool="dRep_analyze", base_command=["dRep", "analyze"], inputs=[ToolInput(tag="in_processors", input_type=Int(optional=True), prefix="--processors", doc=InputDocumentation(doc="threads (default: 6)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="make extra debugging output (default: False)")), ToolInput(tag="in_pl", input_type=Boolean(optional=True), prefix="-pl", doc=InputDocumentation(doc="[PLOTS [PLOTS ...]], --plots [PLOTS [PLOTS ...]]\nPlots. Input 'all' or 'a' to plot all\n1) Primary clustering dendrogram\n2) Secondary clustering dendrograms\n3) Secondary clustering MDS\n4) Comparison scatterplots\n5) Cluster scoring plot\n6) Winning genomes\n(default: None)\n")), ToolInput(tag="in_plots", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Drep_Analyze_V0_1_0().translate("wdl", allow_empty_container=True)

