from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Shuffle_Predictions_Py_V0_1_0 = CommandToolBuilder(tool="shuffle_predictions.py", base_command=["shuffle_predictions.py"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Path to input directory.")), ToolInput(tag="in_outdir", input_type=File(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Path to output directory.")), ToolInput(tag="in_rep", input_type=Int(optional=True), prefix="--rep", doc=InputDocumentation(doc="Number of shuffled replicates to create (default: 1).")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="--seed", doc=InputDocumentation(doc="Random seed: set this if you want reproducible\nshufflings (default: None).")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_outdir", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Path to output directory."))], container="quay.io/biocontainers/picrust2:2.4.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Shuffle_Predictions_Py_V0_1_0().translate("wdl")

