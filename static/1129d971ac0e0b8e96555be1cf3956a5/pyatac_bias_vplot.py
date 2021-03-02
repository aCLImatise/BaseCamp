from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Pyatac_Bias_Vplot_V0_1_0 = CommandToolBuilder(tool="pyatac_bias_vplot", base_command=["pyatac", "bias_vplot"], inputs=[ToolInput(tag="in_bed", input_type=File(optional=True), prefix="--bed", doc=InputDocumentation(doc="Positions around which to generate VPlot")), ToolInput(tag="in_sizes", input_type=File(optional=True), prefix="--sizes", doc=InputDocumentation(doc="Accepts sizes file from pyatac sizes command")), ToolInput(tag="in_bg", input_type=File(optional=True), prefix="--bg", doc=InputDocumentation(doc="Accepts tabix indexed file")), ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="--fasta", doc=InputDocumentation(doc="Accepts indexed fasta file")), ToolInput(tag="in_pwm", input_type=Int(optional=True), prefix="--pwm", doc=InputDocumentation(doc="PWM descriptor file. Default is Human.PWM.txt included\nin package")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="Number of cores to use")), ToolInput(tag="in_lower", input_type=Int(optional=True), prefix="--lower", doc=InputDocumentation(doc="lower limit on insert size")), ToolInput(tag="in_upper", input_type=Int(optional=True), prefix="--upper", doc=InputDocumentation(doc="upper limit on insert size")), ToolInput(tag="in_flank", input_type=Int(optional=True), prefix="--flank", doc=InputDocumentation(doc="how many bases on each side of site (or center of site)\nto include")), ToolInput(tag="in_weight", input_type=Int(optional=True), prefix="--weight", doc=InputDocumentation(doc="column in which weight information is included")), ToolInput(tag="in_strand", input_type=Int(optional=True), prefix="--strand", doc=InputDocumentation(doc="column in which strand information is included")), ToolInput(tag="in_no_plot", input_type=Boolean(optional=True), prefix="--no_plot", doc=InputDocumentation(doc="Don't plot output")), ToolInput(tag="in_plot_extra", input_type=Boolean(optional=True), prefix="--plot_extra", doc=InputDocumentation(doc="Make some extra plots"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyatac_Bias_Vplot_V0_1_0().translate("wdl", allow_empty_container=True)

