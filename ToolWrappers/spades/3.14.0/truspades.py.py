from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Truspades_Py_V0_1_0 = CommandToolBuilder(tool="truspades.py", base_command=["truspades.py"], inputs=[ToolInput(tag="in_test", input_type=Boolean(optional=True), prefix="--test", doc=InputDocumentation(doc="run truSPAdes on toy dataset")), ToolInput(tag="in_outputdir_directory_store", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="<output_dir>    directory to store all the resulting files (required)")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="--threads", doc=InputDocumentation(doc="<int>           number of threads")), ToolInput(tag="in_continue", input_type=Boolean(optional=True), prefix="--continue", doc=InputDocumentation(doc="continue interrupted launch")), ToolInput(tag="in_construct_dataset", input_type=Boolean(optional=True), prefix="--construct-dataset", doc=InputDocumentation(doc="parse dataset from input folder")), ToolInput(tag="in_input_dir", input_type=Boolean(optional=True), prefix="--input-dir", doc=InputDocumentation(doc="<directory>     directory with input data. Note that the directory should contain only files with reads. This option can be used several times to provide several input directories.")), ToolInput(tag="in_dataset", input_type=Boolean(optional=True), prefix="--dataset", doc=InputDocumentation(doc="<file>          file with dataset description"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Truspades_Py_V0_1_0().translate("wdl", allow_empty_container=True)

