from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Array

Augur_Translate_V0_1_0 = CommandToolBuilder(tool="augur_translate", base_command=["augur", "translate"], inputs=[ToolInput(tag="in_tree", input_type=String(optional=True), prefix="--tree", doc=InputDocumentation(doc="prebuilt Newick -- no tree will be built if provided\n(default: None)")), ToolInput(tag="in_ancestral_sequences", input_type=String(optional=True), prefix="--ancestral-sequences", doc=InputDocumentation(doc="JSON (fasta input) or VCF (VCF input) containing\nancestral and tip sequences (default: None)")), ToolInput(tag="in_reference_sequence", input_type=File(optional=True), prefix="--reference-sequence", doc=InputDocumentation(doc="GenBank or GFF file containing the annotation\n(default: None)")), ToolInput(tag="in_genes", input_type=Array(t=String(), optional=True), prefix="--genes", doc=InputDocumentation(doc="genes to translate (list or file containing list)\n(default: None)")), ToolInput(tag="in_output_node_data", input_type=File(optional=True), prefix="--output-node-data", doc=InputDocumentation(doc="name of JSON file to save aa-mutations to (default:\nNone)")), ToolInput(tag="in_alignment_output", input_type=File(optional=True), prefix="--alignment-output", doc=InputDocumentation(doc="write out translated gene alignments. If a VCF-input,\na .vcf or .vcf.gz will be output here (depending on\nfile ending). If fasta-input, specify the file name\nlike so: 'my_alignment_%GENE.fasta', where '%GENE'\nwill be replaced by the name of the gene (default:\nNone)")), ToolInput(tag="in_vcf_reference_output", input_type=File(optional=True), prefix="--vcf-reference-output", doc=InputDocumentation(doc="fasta file where reference sequence translations for\nVCF input will be written (default: None)")), ToolInput(tag="in_vcf_reference", input_type=File(optional=True), prefix="--vcf-reference", doc=InputDocumentation(doc="fasta file of the sequence the VCF was mapped to\n(default: None)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Augur_Translate_V0_1_0().translate("wdl", allow_empty_container=True)

