from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Deepbgc_Train_V0_1_0 = CommandToolBuilder(tool="deepbgc_train", base_command=["deepbgc", "train"], inputs=[ToolInput(tag="in_debug", input_type=File(optional=True), prefix="--debug", doc=InputDocumentation(doc="Path to JSON model config file")), ToolInput(tag="in_target", input_type=String(optional=True), prefix="--target", doc=InputDocumentation(doc="Target column to predict in sequence prediction")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output trained model file path")), ToolInput(tag="in_log", input_type=File(optional=True), prefix="--log", doc=InputDocumentation(doc="Progress log output path (e.g. TensorBoard)")), ToolInput(tag="in_classes", input_type=File(optional=True), prefix="--classes", doc=InputDocumentation(doc="Class TSV file path - train a sequence classifier using provided classes (binary columns), indexed by sequence_id column")), ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="CONFIG\nVariables in model JSON file to replace (e.g. --config PFAM2VEC path/to/pfam2vec.csv)")), ToolInput(tag="in_validation", input_type=File(optional=True), prefix="--validation", doc=InputDocumentation(doc="Validation sequence file path. Repeat to specify multiple files")), ToolInput(tag="in_verbose", input_type=Int(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbosity level: 0=none, 1=progress bar, 2=once per epoch (default: 2)")), ToolInput(tag="in_inputs", input_type=String(), position=0, doc=InputDocumentation(doc="Training sequences (Pfam TSV) file paths"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output trained model file path")), ToolOutput(tag="out_log", output_type=File(optional=True), selector=InputSelector(input_to_select="in_log", type_hint=File()), doc=OutputDocumentation(doc="Progress log output path (e.g. TensorBoard)"))], container="quay.io/biocontainers/deepbgc:0.1.23--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deepbgc_Train_V0_1_0().translate("wdl")

