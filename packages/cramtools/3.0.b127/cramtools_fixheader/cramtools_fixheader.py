from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Cramtools_Fixheader_V0_1_0 = CommandToolBuilder(tool="cramtools_fixheader", base_command=["cramtools", "fixheader"], inputs=[ToolInput(tag="in_confirm_md_five", input_type=Boolean(optional=True), prefix="--confirm-md5", doc=InputDocumentation(doc="Calculate MD5 for sequences mentioned in the header. Requires --reference-fasta-file option. (default: false)")), ToolInput(tag="in_inject_uri", input_type=Boolean(optional=True), prefix="--inject-uri", doc=InputDocumentation(doc="Inject URI for all reference sequences in the header. (default: false)")), ToolInput(tag="in_input_cram_file", input_type=Boolean(optional=True), prefix="--input-cram-file", doc=InputDocumentation(doc="The path to the CRAM file.")), ToolInput(tag="in_reference_fast_a_file", input_type=Boolean(optional=True), prefix="--reference-fasta-file", doc=InputDocumentation(doc="Path to the reference fasta file, it must be uncompressed and indexed (use 'samtools faidx' for example).")), ToolInput(tag="in_uri_pattern", input_type=Boolean(optional=True), prefix="--uri-pattern", doc=InputDocumentation(doc="String formatting pattern for sequence URI to be injected. (default: http://www.ebi.ac.uk/ena/cram/md5/%s)")), ToolInput(tag="in_log_level", input_type=Boolean(optional=True), prefix="--log-level", doc=InputDocumentation(doc="Change log level: DEBUG, INFO, WARNING, ERROR. (default: ERROR)")), ToolInput(tag="in_fix_header", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cramtools_Fixheader_V0_1_0().translate("wdl", allow_empty_container=True)

