from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int

Tango_Transfer_V0_1_0 = CommandToolBuilder(tool="tango_transfer", base_command=["tango", "transfer"], inputs=[ToolInput(tag="in_ignore_unc_rank", input_type=String(optional=True), prefix="--ignore_unc_rank", doc=InputDocumentation(doc="Ignore ORFs unclassified at <rank>")), ToolInput(tag="in_orf_tax_out", input_type=File(optional=True), prefix="--orf_tax_out", doc=InputDocumentation(doc="Also transfer taxonomy back to ORFs and output to file")), ToolInput(tag="in_cpus", input_type=Int(optional=True), prefix="--cpus", doc=InputDocumentation(doc="Number of cpus to use when transferring taxonomy to")), ToolInput(tag="in_orf_taxonomy", input_type=String(), position=0, doc=InputDocumentation(doc="Taxonomy assigned to ORFs (ORF ids in first column)")), ToolInput(tag="in_gff", input_type=String(), position=1, doc=InputDocumentation(doc="GFF or file with contig id in first column and ORF id\nin second column")), ToolInput(tag="in_contig_taxonomy", input_type=String(), position=2, doc=InputDocumentation(doc="Output file with assigned taxonomy for contigs")), ToolInput(tag="in_contigs", input_type=String(), position=0, doc=InputDocumentation(doc="-c CHUNKSIZE, --chunksize CHUNKSIZE"))], outputs=[ToolOutput(tag="out_orf_tax_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_orf_tax_out", type_hint=File()), doc=OutputDocumentation(doc="Also transfer taxonomy back to ORFs and output to file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tango_Transfer_V0_1_0().translate("wdl", allow_empty_container=True)

