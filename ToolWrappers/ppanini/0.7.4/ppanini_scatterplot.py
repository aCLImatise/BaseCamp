from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean, Int

Ppanini_Scatterplot_V0_1_0 = CommandToolBuilder(tool="ppanini_scatterplot", base_command=["ppanini_scatterplot"], inputs=[ToolInput(tag="in_p_panini_output", input_type=String(optional=True), prefix="--ppanini-output", doc=InputDocumentation(doc="PPANINI output table")), ToolInput(tag="in_diamond_output", input_type=File(optional=True), prefix="--diamond-output", doc=InputDocumentation(doc="<feature id>\na mapping file of gene-metagenom)")), ToolInput(tag="in_master_plot", input_type=Boolean(optional=True), prefix="--master-plot", doc=InputDocumentation(doc="plotting master figure of the paper")), ToolInput(tag="in_path", input_type=File(optional=True), prefix="--path", doc=InputDocumentation(doc="path for inputs and/or outputs")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="output file")), ToolInput(tag="in_size", input_type=Int(optional=True), prefix="--size", doc=InputDocumentation(doc="size of the plot in inches"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ppanini_Scatterplot_V0_1_0().translate("wdl", allow_empty_container=True)

