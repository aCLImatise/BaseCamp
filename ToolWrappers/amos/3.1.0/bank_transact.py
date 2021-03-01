from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Bank_Transact_V0_1_0 = CommandToolBuilder(tool="bank_transact", base_command=["bank-transact"], inputs=[ToolInput(tag="in_directory_path_open", input_type=File(optional=True), prefix="-b", doc=InputDocumentation(doc="The directory path of the banks to open or create")), ToolInput(tag="in_create_new_directory", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Create new bank directory if path does not exist")), ToolInput(tag="in_forcibly_create_bank", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Forcibly create new bank by destroying existing")), ToolInput(tag="in_file_path_input", input_type=File(optional=True), prefix="-m", doc=InputDocumentation(doc="The file path of the input message")), ToolInput(tag="in_compress_sequence_values", input_type=Boolean(optional=True), prefix="-z", doc=InputDocumentation(doc="Compress sequence and quality values for SEQ and RED\n(only allows [ACGTN] sequence and [0,63] quality)")), ToolInput(tag="in_display_compatible_version", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Display the compatible bank version")), ToolInput(tag="in_bank_transact", input_type=String(), position=0, doc=InputDocumentation(doc="[options]  -b <bank path> -m <message path>"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bank_Transact_V0_1_0().translate("wdl", allow_empty_container=True)

