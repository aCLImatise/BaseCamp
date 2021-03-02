from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Plotribodensityaroundtriaamotifs_V0_1_0 = CommandToolBuilder(tool="PlotRiboDensityAroundTriAAMotifs", base_command=["PlotRiboDensityAroundTriAAMotifs"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Input file in dataframe format (pd.DataFrame).")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="Output files")), ToolInput(tag="in_group", input_type=Int(optional=True), prefix="--group", doc=InputDocumentation(doc="Group name of each group separated by comma. e.g. 'si-\ncontrol,si-eIF3e'")), ToolInput(tag="in_replicate", input_type=Int(optional=True), prefix="--replicate", doc=InputDocumentation(doc="Replicate name of each group separated by comma. e.g.\n'si_3e_1_80S,si_3e_2_80S__si_cttl_1_80S,si_ctrl_2_80S'")), ToolInput(tag="in_ymax", input_type=Int(optional=True), prefix="--ymax", doc=InputDocumentation(doc="The max of ylim. default=none")), ToolInput(tag="in_ymin", input_type=Int(optional=True), prefix="--ymin", doc=InputDocumentation(doc="The min of ylim. default=none")), ToolInput(tag="in_mode", input_type=String(optional=True), prefix="--mode", doc=InputDocumentation(doc="Control the mode for plot. if '--mode single', return\nthe plot of each samples;else return the mean plot.\ndefault=mean.\n"))], outputs=[], container="quay.io/biocontainers/ribominer:0.2.3.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plotribodensityaroundtriaamotifs_V0_1_0().translate("wdl")

