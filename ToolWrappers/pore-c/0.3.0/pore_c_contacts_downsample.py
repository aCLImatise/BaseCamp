from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Pore_C_Contacts_Downsample_V0_1_0 = CommandToolBuilder(tool="pore_c_contacts_downsample", base_command=["pore_c", "contacts", "downsample"], inputs=[ToolInput(tag="in_random_seed", input_type=Int(optional=True), prefix="--random-seed", doc=InputDocumentation(doc="Check if the difference between the sampled\namout and the target amount is greater than\nthis proportion")), ToolInput(tag="in_warn", input_type=Boolean(optional=True), prefix="--warn", doc=InputDocumentation(doc="If the a sample fails the --tol check print a\nwarning rather than exiting")), ToolInput(tag="in_max_attempts", input_type=Int(optional=True), prefix="--max-attempts", doc=InputDocumentation(doc="The number of times to try and find a set of\nsubsamples all within --tol")), ToolInput(tag="in_dest_contact_table_prefix", input_type=String(), position=0, doc=InputDocumentation(doc="[DOWNSAMPLE_INCREMENTS]..."))], outputs=[], container="quay.io/biocontainers/pore-c:0.3.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pore_C_Contacts_Downsample_V0_1_0().translate("wdl")

