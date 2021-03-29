from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Augur_Sequence_Traits_V0_1_0 = CommandToolBuilder(tool="augur_sequence_traits", base_command=["augur", "sequence-traits"], inputs=[ToolInput(tag="in_ancestral_sequences", input_type=String(optional=True), prefix="--ancestral-sequences", doc=InputDocumentation(doc="nucleotide alignment (VCF) to search for sequence\ntraits in (can be generated from 'ancestral' using '--\noutput-vcf') (default: None)")), ToolInput(tag="in_translations", input_type=String(optional=True), prefix="--translations", doc=InputDocumentation(doc="AA alignment to search for sequence traits in (can\ninclude ancestral sequences) (default: None)")), ToolInput(tag="in_vcf_reference", input_type=File(optional=True), prefix="--vcf-reference", doc=InputDocumentation(doc="fasta file of the sequence the nucleotide VCF was\nmapped to (default: None)")), ToolInput(tag="in_vcf_translate_reference", input_type=File(optional=True), prefix="--vcf-translate-reference", doc=InputDocumentation(doc="fasta file of the sequence the translated VCF was\nmapped to (default: None)")), ToolInput(tag="in_features", input_type=File(optional=True), prefix="--features", doc=InputDocumentation(doc="file that specifies sites defining the features in a\ntab-delimited format: 'GENE SITE ALT DISPLAY_NAME\nFEATURE'. For nucleotide sites, GENE can be 'nuc' (or\ncolumn excluded entirely for all-nuc sites).\n'DISPLAY_NAME' can be blank or excluded entirely.\n(default: None)")), ToolInput(tag="in_count", input_type=String(optional=True), prefix="--count", doc=InputDocumentation(doc="Whether to count traits (ex: # drugs resistant to) or\nmutations (default: traits)")), ToolInput(tag="in_label", input_type=String(optional=True), prefix="--label", doc=InputDocumentation(doc="How to label the counts (ex: Drug_Resistance)\n(default: # Traits)")), ToolInput(tag="in_output_node_data", input_type=File(optional=True), prefix="--output-node-data", doc=InputDocumentation(doc="name of JSON file to save sequence features to\n(default: None)\n"))], outputs=[], container="quay.io/biocontainers/augur:11.3.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Augur_Sequence_Traits_V0_1_0().translate("wdl")

