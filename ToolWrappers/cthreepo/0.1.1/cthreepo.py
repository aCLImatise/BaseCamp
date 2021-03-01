from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Cthreepo_V0_1_0 = CommandToolBuilder(tool="cthreepo", base_command=["cthreepo"], inputs=[ToolInput(tag="in_in_file", input_type=File(optional=True), prefix="--infile", doc=InputDocumentation(doc="input file")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="output file")), ToolInput(tag="in_map_file", input_type=File(optional=True), prefix="--mapfile", doc=InputDocumentation(doc="NCBI style assembly_report file for mapping")), ToolInput(tag="in_accn", input_type=String(optional=True), prefix="--accn", doc=InputDocumentation(doc="NCBI Assembly Accession with version")), ToolInput(tag="in_id_from", input_type=File(optional=True), prefix="--id_from", doc=InputDocumentation(doc="seq-id format in the input file; can be `ens`, `uc`,\n`gb`, or `rs`; default is `uc`")), ToolInput(tag="in_id_to", input_type=File(optional=True), prefix="--id_to", doc=InputDocumentation(doc="seq-id format in the output file; can be `ens`, `uc`,\n`gb`, or `rs`; default is `rs`")), ToolInput(tag="in_keep_unmapped", input_type=Boolean(optional=True), prefix="--keep_unmapped", doc=InputDocumentation(doc="keep lines that don't have seq-id matches")), ToolInput(tag="in_primary", input_type=Boolean(optional=True), prefix="--primary", doc=InputDocumentation(doc="restrict to primary assembly only")), ToolInput(tag="in_format", input_type=File(optional=True), prefix="--format", doc=InputDocumentation(doc="input file format; can be `gff3`, `gtf`, `bedgraph`\n`bed`, `sam`, `vcf`, `wig` or `tsv`; default is `gff3`")), ToolInput(tag="in_column", input_type=String(optional=True), prefix="--column", doc=InputDocumentation(doc="column where the seq-id is located; required for `tsv`\nformat\n"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="output file")), ToolOutput(tag="out_id_to", output_type=File(optional=True), selector=InputSelector(input_to_select="in_id_to", type_hint=File()), doc=OutputDocumentation(doc="seq-id format in the output file; can be `ens`, `uc`,\n`gb`, or `rs`; default is `rs`"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cthreepo_V0_1_0().translate("wdl", allow_empty_container=True)

