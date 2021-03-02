from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean, File

Pore_C_Contacts_Export_V0_1_0 = CommandToolBuilder(tool="pore_c_contacts_export", base_command=["pore_c", "contacts", "export"], inputs=[ToolInput(tag="in_min_mapping_quality", input_type=Int(optional=True), prefix="--min-mapping-quality", doc=InputDocumentation(doc="Both alignments have mapping qualities\ngreater than this  [default: 0]")), ToolInput(tag="in_min_align_base_q_score", input_type=Int(optional=True), prefix="--min-align-base-qscore", doc=InputDocumentation(doc="Both alignments have mean base qualities\ngreater than this  [default: 0]")), ToolInput(tag="in_cooler_resolution", input_type=Int(optional=True), prefix="--cooler-resolution", doc=InputDocumentation(doc="The bin width of the resulting matrix\n[default: 1000]")), ToolInput(tag="in_fragment_table", input_type=String(optional=True), prefix="--fragment-table", doc=InputDocumentation(doc="The fragment table for the corresponding\nvirtual digest(required if export format is\nin cooler)")), ToolInput(tag="in_by_haplotype", input_type=Boolean(optional=True), prefix="--by-haplotype", doc=InputDocumentation(doc="Create a cooler for each pair of haplotypes\n(eg 1-1, 1-2, 2-2,...). Only valid with\n'cooler'")), ToolInput(tag="in_chrom_sizes", input_type=File(optional=True), prefix="--chromsizes", doc=InputDocumentation(doc="The chromsizes file for the corresponding\ngenome(required if export format is in\ncooler,pairs)")), ToolInput(tag="in_reference_fast_a", input_type=String(optional=True), prefix="--reference-fasta", doc=InputDocumentation(doc="The reference genome used to generate the\ncontact table(required if export format is\nin paired_end_fastq,merged_no_dups)")), ToolInput(tag="in_contact_table", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/pore-c:0.3.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pore_C_Contacts_Export_V0_1_0().translate("wdl")

