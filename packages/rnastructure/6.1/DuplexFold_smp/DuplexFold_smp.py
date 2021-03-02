from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Duplexfold_Smp_V0_1_0 = CommandToolBuilder(tool="DuplexFold_smp", base_command=["DuplexFold-smp"], inputs=[ToolInput(tag="in_dna", input_type=Boolean(optional=True), prefix="--DNA", doc=InputDocumentation(doc="Specify that the sequence is DNA, and DNA parameters are to be used.\nDefault is to use RNA parameters.")), ToolInput(tag="in_loop", input_type=Boolean(optional=True), prefix="--loop", doc=InputDocumentation(doc="Specify a maximum internal/bulge loop size.\nDefault is 6 unpaired numcleotides.")), ToolInput(tag="in_maximum", input_type=Boolean(optional=True), prefix="--maximum", doc=InputDocumentation(doc="Specify a maximum number of structures.\nDefault is 10 structures.")), ToolInput(tag="in_percent", input_type=Boolean(optional=True), prefix="--percent", doc=InputDocumentation(doc="Specify a maximum percent energy difference.\nDefault is 40 percent (specified as 40, not 0.4).")), ToolInput(tag="in_temperature", input_type=Boolean(optional=True), prefix="--temperature", doc=InputDocumentation(doc="Specify the temperature at which calculation takes place in Kelvin.\nDefault is 310.15 K, which is 37 degrees C.")), ToolInput(tag="in_window", input_type=Boolean(optional=True), prefix="--window", doc=InputDocumentation(doc="Specify a window size.\nDefault is 0 nucleotides.\n")), ToolInput(tag="in_duplex_fold", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_seq_file_one", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_seq_file_two", input_type=File(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_ct_file", input_type=File(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Duplexfold_Smp_V0_1_0().translate("wdl", allow_empty_container=True)

