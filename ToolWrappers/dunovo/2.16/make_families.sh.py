from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Make_Families_Sh_V0_1_0 = CommandToolBuilder(tool="make_families.sh", base_command=["make-families.sh"], inputs=[ToolInput(tag="in_length_barcode_portion", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc=": The length of the barcode portion of each read. Default: 12")), ToolInput(tag="in_length_invariant_ligation", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc=": The length of the invariant (ligation) portion of each read. Default: 5")), ToolInput(tag="in_memory_usage_parameter", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc=": The memory usage parameter to pass directly to the sort command's -S option.\nCan be an absolute figure like 5G or a percentage. See man sort for details.")), ToolInput(tag="in_temporary_file_directory", input_type=Boolean(optional=True), prefix="-T", doc=InputDocumentation(doc=": The temporary file directory that sort should use.\nWill be passed directly to the sort command's -T option.\n"))], outputs=[], container="quay.io/biocontainers/dunovo:2.16--py39h38f01e4_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Make_Families_Sh_V0_1_0().translate("wdl")

