from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Dnp_Fourier_V0_1_0 = CommandToolBuilder(tool="dnp_fourier", base_command=["dnp-fourier"], inputs=[ToolInput(tag="in_sequence", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="sequence")), ToolInput(tag="in_table", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="table")), ToolInput(tag="in_of_window_smoothing", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="of window of smoothing")), ToolInput(tag="in_normalisation_base_normalization", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="of normalisation:\n0 base normalization\n1 linear normalization\n2 quadratic normalization")), ToolInput(tag="in_output_table_normalization", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="of output table:\n1 normalization\n2 smoothing\n3 Fourier transform\nS.Hosid 2008 - 2018\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dnp_Fourier_V0_1_0().translate("wdl", allow_empty_container=True)

