from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Dbdump_V0_1_0 = CommandToolBuilder(tool="DBdump", base_command=["DBdump"], inputs=[ToolInput(tag="in_r_read_number", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc=": R #              - read number")), ToolInput(tag="in_s_string_string", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc=": S # string       - sequence string")), ToolInput(tag="in_n_snr_string", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc=": N # # # #        - SNR of ACGT channels (#/100)\nA # string       - arrow pulse-width string")), ToolInput(tag="in_i_string_vector", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc=": I # string       - intrinsic quality vector (as an ASCII string)")), ToolInput(tag="in_string_deletion_values", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc=": d # string       - Quiva deletion values (as an ASCII string)\nc # string       - Quiva deletion character string\ni # string       - Quiva insertion value string\nm # string       - Quiva merge value string\ns # string       - Quiva substitution value string")), ToolInput(tag="in_p_string_repeat", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc=": P # string       - repeat profile vector (as an ASCII string)")), ToolInput(tag="in_tx_b_xth", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc=": Tx #n (#b #e)^#n - x'th track on command line, #n intervals all on same line")), ToolInput(tag="in_dump_entire_database", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc=": Dump entire untrimmed database.")), ToolInput(tag="in_output_base_pairs", input_type=Boolean(optional=True), prefix="-U", doc=InputDocumentation(doc=": Output base pairs in upper case letters")), ToolInput(tag="in_uu", input_type=Boolean(optional=True), prefix="-uU", doc=InputDocumentation(doc="")), ToolInput(tag="in_rhsa_iqp", input_type=Boolean(optional=True), prefix="-rhsaiqp", doc=InputDocumentation(doc="")), ToolInput(tag="in_mask", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dbdump_V0_1_0().translate("wdl", allow_empty_container=True)

