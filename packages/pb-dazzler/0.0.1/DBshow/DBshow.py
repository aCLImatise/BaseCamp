from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Dbshow_V0_1_0 = CommandToolBuilder(tool="DBshow", base_command=["DBshow"], inputs=[ToolInput(tag="in_show_untrimmed_database", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc=": Show the untrimmed database.")), ToolInput(tag="in_show_also_quiva", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc=": Show also the .quiva streams.")), ToolInput(tag="in_show_also_sequences", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc=": Show also the .arrow pulse sequences.")), ToolInput(tag="in_show_default_read", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc=": Do not show the default read DNA sequences.")), ToolInput(tag="in_show_mask_intervals", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc=": Show mask intervals and highlight in sequence.")), ToolInput(tag="in_produce_quiva_file", input_type=Boolean(optional=True), prefix="-Q", doc=InputDocumentation(doc=": Produce a .quiva file (ignore all other options but -uU).")), ToolInput(tag="in_produce_file_ignore", input_type=Boolean(optional=True), prefix="-A", doc=InputDocumentation(doc=": Produce a .arrow file (ignore all other options but -uw).")), ToolInput(tag="in_use_upper_case", input_type=Boolean(optional=True), prefix="-U", doc=InputDocumentation(doc=": Use upper case for DNA (default is lower case).")), ToolInput(tag="in_print_bp_line", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc=": Print -w bp per line (default is 80).")), ToolInput(tag="in_unq_auqa", input_type=Boolean(optional=True), prefix="-unqaUQA", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dbshow_V0_1_0().translate("wdl", allow_empty_container=True)

