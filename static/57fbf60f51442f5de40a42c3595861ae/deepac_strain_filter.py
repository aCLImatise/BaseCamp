from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String, Int

Deepac_Strain_Filter_V0_1_0 = CommandToolBuilder(tool="deepac_strain_filter", base_command=["deepac-strain", "filter"], inputs=[ToolInput(tag="in_potentials", input_type=Boolean(optional=True), prefix="--potentials", doc=InputDocumentation(doc="Print pathogenic potential values in .fasta headers.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file path [.fasta].")), ToolInput(tag="in_std", input_type=String(optional=True), prefix="--std", doc=InputDocumentation(doc="Standard deviations of predictions if MC dropout used.")), ToolInput(tag="in_precision", input_type=Int(optional=True), prefix="--precision", doc=InputDocumentation(doc="Format pathogenic potentials to given precision\n[default=3].\n")), ToolInput(tag="in_t", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="Input file path [.fasta].")), ToolInput(tag="in_predictions", input_type=String(), position=1, doc=InputDocumentation(doc="Predictions in matching order [.npy]."))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file path [.fasta]."))], container="quay.io/biocontainers/deepacstrain:0.2.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deepac_Strain_Filter_V0_1_0().translate("wdl")

