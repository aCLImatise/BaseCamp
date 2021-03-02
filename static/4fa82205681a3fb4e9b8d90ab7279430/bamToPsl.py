from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Bamtopsl_V0_1_0 = CommandToolBuilder(tool="bamToPsl", base_command=["bamToPsl"], inputs=[ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="-fasta", doc=InputDocumentation(doc="- output query sequences to specified file")), ToolInput(tag="in_chrom_alias", input_type=File(optional=True), prefix="-chromAlias", doc=InputDocumentation(doc="- specify a two-column file: 1: alias, 2: other name\nfor target name translation from column 1 name to column 2 name\nnames not found are passed through intact")), ToolInput(tag="in_no_head", input_type=Boolean(optional=True), prefix="-nohead", doc=InputDocumentation(doc="- do not output the PSL header, default has header output")), ToolInput(tag="in_allow_dups", input_type=Boolean(optional=True), prefix="-allowDups", doc=InputDocumentation(doc="- for fasta output, allow duplicate query sequences output\n- default is to eliminate duplicate sequences\n- runs much faster without the duplicate check")), ToolInput(tag="in_no_sequence_verify", input_type=Boolean(optional=True), prefix="-noSequenceVerify", doc=InputDocumentation(doc="- when checking for dups, do not verify each sequence\n- when the same name is identical, assume they are\n- helps speed up the dup check but not thorough")), ToolInput(tag="in_dots", input_type=String(optional=True), prefix="-dots", doc=InputDocumentation(doc="- output progress dot(.) every N alignments processed")), ToolInput(tag="in_in_dot_bam", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_fast_a", output_type=File(optional=True), selector=InputSelector(input_to_select="in_fast_a", type_hint=File()), doc=OutputDocumentation(doc="- output query sequences to specified file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bamtopsl_V0_1_0().translate("wdl", allow_empty_container=True)

