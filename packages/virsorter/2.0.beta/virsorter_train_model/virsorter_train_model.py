from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, Int, Boolean, String

Virsorter_Train_Model_V0_1_0 = CommandToolBuilder(tool="virsorter_train_model", base_command=["virsorter", "train-model"], inputs=[ToolInput(tag="in_working_dir", input_type=Directory(optional=True), prefix="--working-dir", doc=InputDocumentation(doc="output directory  [required]")), ToolInput(tag="in_viral_ftr_file", input_type=File(optional=True), prefix="--viral-ftrfile", doc=InputDocumentation(doc="viral genome feature file for training  [required]")), ToolInput(tag="in_nonviral_ftr_file", input_type=File(optional=True), prefix="--nonviral-ftrfile", doc=InputDocumentation(doc="nonviral genome feature file for training\n[required]")), ToolInput(tag="in_jobs", input_type=Int(optional=True), prefix="--jobs", doc=InputDocumentation(doc="number of threads for classier  [default: 8]")), ToolInput(tag="in_balanced", input_type=Boolean(optional=True), prefix="--balanced", doc=InputDocumentation(doc="random undersample the larger to the size of the\nsmaller feature file  [default: False]")), ToolInput(tag="in_use_cond_a_off", input_type=Boolean(optional=True), prefix="--use-conda-off", doc=InputDocumentation(doc="Stop using the conda envs (vs2.yaml) that come with\nthis package and use what are installed in current\nsystem; Only useful when you want to install\ndependencies on your own with your own prefer\nversions  [default: False]")), ToolInput(tag="in_snake_make_args", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_working_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_working_dir", type_hint=File()), doc=OutputDocumentation(doc="output directory  [required]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Virsorter_Train_Model_V0_1_0().translate("wdl", allow_empty_container=True)

