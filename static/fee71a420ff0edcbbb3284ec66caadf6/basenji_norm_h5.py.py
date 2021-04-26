from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Directory, Boolean, Float, String

Basenji_Norm_H5_Py_V0_1_0 = CommandToolBuilder(tool="basenji_norm_h5.py", base_command=["basenji_norm_h5.py"], inputs=[ToolInput(tag="in_uniformly_sample_seq", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="Uniformly sample across the seq length [Default: 1]")), ToolInput(tag="in_mc", input_type=Int(optional=True), prefix="--mc", doc=InputDocumentation(doc="Monte carlo test iterations [Default: 0]")), ToolInput(tag="in_output_directory_test", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="Output directory for test statistics [Default: test_out]")), ToolInput(tag="in_rc", input_type=Boolean(optional=True), prefix="--rc", doc=InputDocumentation(doc="Average the fwd and rc predictions [Default: False]")), ToolInput(tag="in_sample_sequences", input_type=Float(optional=True), prefix="-s", doc=InputDocumentation(doc="Sample sequences [Default: 1.0]")), ToolInput(tag="in_save", input_type=Boolean(optional=True), prefix="--save", doc=InputDocumentation(doc="Save predictions to HDF5. [Default: False]")), ToolInput(tag="in_shifts", input_type=Int(optional=True), prefix="--shifts", doc=InputDocumentation(doc="Ensemble prediction shifts [Default: 0]")), ToolInput(tag="in_train", input_type=Boolean(optional=True), prefix="--train", doc=InputDocumentation(doc="Process the training set [Default: False]")), ToolInput(tag="in_process_validation_set", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Process the validation set [Default: False]")), ToolInput(tag="in_params_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_model_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_test_hdf_five_file", input_type=Int(), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_directory_test", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory_test", type_hint=File()), doc=OutputDocumentation(doc="Output directory for test statistics [Default: test_out]"))], container="quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Basenji_Norm_H5_Py_V0_1_0().translate("wdl")

