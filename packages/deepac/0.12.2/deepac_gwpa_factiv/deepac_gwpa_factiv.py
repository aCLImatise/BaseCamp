from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Directory, Int, Boolean

Deepac_Gwpa_Factiv_V0_1_0 = CommandToolBuilder(tool="deepac_gwpa_factiv", base_command=["deepac", "gwpa", "factiv"], inputs=[ToolInput(tag="in_model", input_type=File(optional=True), prefix="--model", doc=InputDocumentation(doc="Model file (.h5)")), ToolInput(tag="in_test_data", input_type=String(optional=True), prefix="--test-data", doc=InputDocumentation(doc="Test data (.npy)")), ToolInput(tag="in_test_fast_a", input_type=String(optional=True), prefix="--test-fasta", doc=InputDocumentation(doc="Reads of the test data set (.fasta)")), ToolInput(tag="in_out_dir", input_type=Directory(optional=True), prefix="--out-dir", doc=InputDocumentation(doc="Output directory")), ToolInput(tag="in_inter_layer", input_type=String(optional=True), prefix="--inter-layer", doc=InputDocumentation(doc="Perform calculations for this intermediate layer")), ToolInput(tag="in_seq_chunk", input_type=Int(optional=True), prefix="--seq-chunk", doc=InputDocumentation(doc="Sequence chunk size. Decrease for lower memory usage.")), ToolInput(tag="in_perform_calculations_only", input_type=Boolean(optional=True), prefix="-F", doc=InputDocumentation(doc="[INTER_NEURON [INTER_NEURON ...]], --inter-neuron [INTER_NEURON [INTER_NEURON ...]]\nPerform calculations for this filter only\n"))], outputs=[ToolOutput(tag="out_out_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deepac_Gwpa_Factiv_V0_1_0().translate("wdl", allow_empty_container=True)

