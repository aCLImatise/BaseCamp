from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Guppy_Classify_Rdp_V0_1_0 = CommandToolBuilder(tool="guppy_classify_rdp", base_command=["guppy", "classify_rdp"], inputs=[ToolInput(tag="in_csv", input_type=Boolean(optional=True), prefix="--csv", doc=InputDocumentation(doc="Write .class.csv files containing CSV data.")), ToolInput(tag="in_reference_package_path", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Reference package path. Required.")), ToolInput(tag="in_sqlite", input_type=Boolean(optional=True), prefix="--sqlite", doc=InputDocumentation(doc="Specify the database file to use.")), ToolInput(tag="in_specify_filename_write", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="Specify the filename to write to.")), ToolInput(tag="in_out_dir", input_type=Boolean(optional=True), prefix="--out-dir", doc=InputDocumentation(doc="Specify the directory to write files to.")), ToolInput(tag="in_prefix", input_type=Boolean(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Specify a string to be prepended to filenames. Required.")), ToolInput(tag="in_help", input_type=Boolean(optional=True), prefix="--help", doc=InputDocumentation(doc="Display this list of options")), ToolInput(tag="in_classify_rdp", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_rdp_output_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_s", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Guppy_Classify_Rdp_V0_1_0().translate("wdl", allow_empty_container=True)

