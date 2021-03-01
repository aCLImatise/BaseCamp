from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean, Directory, File

Basenji_Test_Py_V0_1_0 = CommandToolBuilder(tool="basenji_test.py", base_command=["basenji_test.py"], inputs=[ToolInput(tag="in_a_i", input_type=String(optional=True), prefix="--ai", doc=InputDocumentation(doc="Comma-separated list of target indexes to make\naccuracy scatter plots.")), ToolInput(tag="in_head", input_type=Int(optional=True), prefix="--head", doc=InputDocumentation(doc="Parameters head to test [Default: 0]")), ToolInput(tag="in_mc", input_type=Int(optional=True), prefix="--mc", doc=InputDocumentation(doc="Monte carlo test iterations [Default: 0]")), ToolInput(tag="in_peaks", input_type=Boolean(optional=True), prefix="--peaks", doc=InputDocumentation(doc="Compute expensive peak accuracy [Default: False]")), ToolInput(tag="in_output_directory_defaulttestout", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="Output directory for test statistics [Default:\ntest_out]")), ToolInput(tag="in_rc", input_type=Boolean(optional=True), prefix="--rc", doc=InputDocumentation(doc="Average the fwd and rc predictions [Default: False]")), ToolInput(tag="in_save", input_type=Boolean(optional=True), prefix="--save", doc=InputDocumentation(doc="Save targets and predictions numpy arrays [Default:\nFalse]")), ToolInput(tag="in_shifts", input_type=Int(optional=True), prefix="--shifts", doc=InputDocumentation(doc="Ensemble prediction shifts [Default: 0]")), ToolInput(tag="in_file_specifying_indexes", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="File specifying target indexes and labels in table")), ToolInput(tag="in_tfr", input_type=String(optional=True), prefix="--tfr", doc=InputDocumentation(doc="TFR pattern string appended to data_dir/tfrecords for\nsubsetting [Default: none]\n")), ToolInput(tag="in_format", input_type=String(), position=0, doc=InputDocumentation(doc="--split=SPLIT_LABEL   Dataset split label for eg TFR pattern [Default: test]"))], outputs=[ToolOutput(tag="out_output_directory_defaulttestout", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory_defaulttestout", type_hint=File()), doc=OutputDocumentation(doc="Output directory for test statistics [Default:\ntest_out]"))], container="quay.io/biocontainers/basenji:0.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Basenji_Test_Py_V0_1_0().translate("wdl")

