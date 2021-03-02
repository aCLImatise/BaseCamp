from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

H5Watch_V0_1_0 = CommandToolBuilder(tool="h5watch", base_command=["h5watch"], inputs=[ToolInput(tag="in_label", input_type=Boolean(optional=True), prefix="--label", doc=InputDocumentation(doc="Label members of compound typed dataset.")), ToolInput(tag="in_simple", input_type=Boolean(optional=True), prefix="--simple", doc=InputDocumentation(doc="Use a machine-readable output format.")), ToolInput(tag="in_dim", input_type=Boolean(optional=True), prefix="--dim", doc=InputDocumentation(doc="Monitor changes in size of dataset dimensions only.")), ToolInput(tag="in_width", input_type=Int(optional=True), prefix="--width", doc=InputDocumentation(doc="Set the number of columns to N for output.\nA value of 0 sets the number of columns to the\nmaximum (65535). The default width is 80 columns.")), ToolInput(tag="in_polling", input_type=Int(optional=True), prefix="--polling", doc=InputDocumentation(doc="Set the polling interval to N (in seconds) when the\ndataset will be checked for appended data.  The default\npolling interval is 1.")), ToolInput(tag="in_fields", input_type=Int(optional=True), prefix="--fields", doc=InputDocumentation(doc="Display data for the fields specified in <list_of_fields>\nfor a compound data type.  <list_of_fields> can be\nspecified as follows:\n1) A comma-separated list of field names in a\ncompound data type.  ',' is the separator\nfor field names while '.' is the separator\nfor a nested field.\n2) A single field name in a compound data type.\nCan use this option multiple times.\nNote that backslash is the escape character to avoid\ncharacters in field names that conflict with the tool's\nseparators.")), ToolInput(tag="in_options", input_type=String(), position=0, doc=InputDocumentation(doc="--help            Print a usage message and exit."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    H5Watch_V0_1_0().translate("wdl", allow_empty_container=True)

