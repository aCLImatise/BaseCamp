from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Fs_V0_1_0 = CommandToolBuilder(tool="fs", base_command=["fs"], inputs=[ToolInput(tag="in__verbose_mode", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=":    Verbose mode")), ToolInput(tag="in_new_settings_file", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc=":    New settings file, overwriting any previous file")), ToolInput(tag="in_go", input_type=Boolean(optional=True), prefix="-go", doc=InputDocumentation(doc=": Do the next things that are necessary to get a complete set of finestructure runs.")), ToolInput(tag="in_import", input_type=File(optional=True), prefix="-import", doc=InputDocumentation(doc=": Import some settings from an external file. If you need to set any non-trivial settings, this is the way to do it. See 'fs -hh' for more details.")), ToolInput(tag="in_create_id", input_type=File(optional=True), prefix="-createid", doc=InputDocumentation(doc=": Create an ID file from a PROVIDED phase file. Individuals are labelled IND1-IND<N>."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fs_V0_1_0().translate("wdl", allow_empty_container=True)

