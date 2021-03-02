from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Homopolish_Train_V0_1_0 = CommandToolBuilder(tool="homopolish_train", base_command=["homopolish", "train"], inputs=[ToolInput(tag="in_data_frame_dir", input_type=File(optional=True), prefix="--dataframe_dir", doc=InputDocumentation(doc="[REQUIRED] Path to a directory for alignment\ndataframe.")), ToolInput(tag="in_output_dir", input_type=File(optional=True), prefix="--output_dir", doc=InputDocumentation(doc="Path to the output directory. [output]")), ToolInput(tag="in_output_prefix", input_type=String(optional=True), prefix="--output_prefix", doc=InputDocumentation(doc="Prefix for the train model. [train]")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads to use. [1]\n"))], outputs=[ToolOutput(tag="out_output_dir", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Path to the output directory. [output]"))], container="quay.io/biocontainers/homopolish:0.0.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Homopolish_Train_V0_1_0().translate("wdl")

