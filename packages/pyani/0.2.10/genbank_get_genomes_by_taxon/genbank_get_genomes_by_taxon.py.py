from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, Boolean, File, Int

Genbank_Get_Genomes_By_Taxon_Py_V0_1_0 = CommandToolBuilder(tool="genbank_get_genomes_by_taxon.py", base_command=["genbank_get_genomes_by_taxon.py"], inputs=[ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Output directory (required)")), ToolInput(tag="in_tax_on", input_type=String(optional=True), prefix="--taxon", doc=InputDocumentation(doc="NCBI taxonomy ID")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Give verbose output")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Force file overwriting")), ToolInput(tag="in_no_clobber", input_type=Boolean(optional=True), prefix="--noclobber", doc=InputDocumentation(doc="Don't nuke existing files")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--logfile", doc=InputDocumentation(doc="Logfile location")), ToolInput(tag="in_format", input_type=File(optional=True), prefix="--format", doc=InputDocumentation(doc="Output file format [gbk|fasta]")), ToolInput(tag="in_email", input_type=String(optional=True), prefix="--email", doc=InputDocumentation(doc="Email associated with NCBI queries (required)")), ToolInput(tag="in_retries", input_type=Int(optional=True), prefix="--retries", doc=InputDocumentation(doc="Number of Entrez retry attempts per request.")), ToolInput(tag="in_batch_size", input_type=Int(optional=True), prefix="--batchsize", doc=InputDocumentation(doc="Entrez record return batch size")), ToolInput(tag="in_timeout", input_type=String(optional=True), prefix="--timeout", doc=InputDocumentation(doc="Timeout for URL connection (s)"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Output directory (required)")), ToolOutput(tag="out_format", output_type=File(optional=True), selector=InputSelector(input_to_select="in_format", type_hint=File()), doc=OutputDocumentation(doc="Output file format [gbk|fasta]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genbank_Get_Genomes_By_Taxon_Py_V0_1_0().translate("wdl", allow_empty_container=True)

