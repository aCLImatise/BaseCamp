from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory, String, Int

Basenji_Train_Py_V0_1_0 = CommandToolBuilder(tool="basenji_train.py", base_command=["basenji_train.py"], inputs=[ToolInput(tag="in_train_keras_fit", input_type=Boolean(optional=True), prefix="-k", doc=InputDocumentation(doc="Train with Keras fit method [Default: False]")), ToolInput(tag="in_output_directory_defaulttrainout", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="Output directory for test statistics [Default:\ntrain_out]")), ToolInput(tag="in_restore", input_type=String(optional=True), prefix="--restore", doc=InputDocumentation(doc="Restore model and continue training [Default: none]")), ToolInput(tag="in_trunk", input_type=Boolean(optional=True), prefix="--trunk", doc=InputDocumentation(doc="Restore only model trunk [Default: False]")), ToolInput(tag="in_tfr_train", input_type=String(optional=True), prefix="--tfr_train", doc=InputDocumentation(doc="Training TFR pattern string appended to\ndata_dir/tfrecords for subsetting [Default: none]")), ToolInput(tag="in_tfr_eval", input_type=String(optional=True), prefix="--tfr_eval", doc=InputDocumentation(doc="Evaluation TFR pattern string appended to\ndata_dir/tfrecords for subsetting [Default: none]\n")), ToolInput(tag="in_data_one_dir", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_directory_defaulttrainout", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory_defaulttrainout", type_hint=File()), doc=OutputDocumentation(doc="Output directory for test statistics [Default:\ntrain_out]"))], container="quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Basenji_Train_Py_V0_1_0().translate("wdl")

