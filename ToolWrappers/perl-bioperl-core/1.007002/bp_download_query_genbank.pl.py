from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int

Bp_Download_Query_Genbank_Pl_V0_1_0 = CommandToolBuilder(tool="bp_download_query_genbank.pl", base_command=["bp_download_query_genbank.pl"], inputs=[ToolInput(tag="in_query", input_type=String(optional=True), prefix="--query", doc=InputDocumentation(doc="string OR")), ToolInput(tag="in_query_file", input_type=File(optional=True), prefix="--queryfile", doc=InputDocumentation(doc="file with query OR")), ToolInput(tag="in_gi_file", input_type=File(optional=True), prefix="--gifile", doc=InputDocumentation(doc="with list of GIs to download")), ToolInput(tag="in_db", input_type=String(optional=True), prefix="--db", doc=InputDocumentation(doc="(nucleotide [default], nucest, protein, )")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="file (results are displayed on screen otherwise)")), ToolInput(tag="in_format", input_type=File(optional=True), prefix="--format", doc=InputDocumentation(doc="file output format (fasta by default)")), ToolInput(tag="in_verbose", input_type=String(optional=True), prefix="--verbose", doc=InputDocumentation(doc="output")), ToolInput(tag="in_max_ids", input_type=Int(optional=True), prefix="--maxids", doc=InputDocumentation(doc="number of IDs to retrieve in a set (100 at a time by default)")), ToolInput(tag="in_rel_date", input_type=String(optional=True), prefix="--reldate", doc=InputDocumentation(doc="for a record")), ToolInput(tag="in_min_date", input_type=String(optional=True), prefix="--mindate", doc=InputDocumentation(doc="date for record")), ToolInput(tag="in_date_type", input_type=String(optional=True), prefix="--datetype", doc=InputDocumentation(doc="or mdat (entered or modified)"))], outputs=[ToolOutput(tag="out_format", output_type=File(optional=True), selector=InputSelector(input_to_select="in_format", type_hint=File()), doc=OutputDocumentation(doc="file output format (fasta by default)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bp_Download_Query_Genbank_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

