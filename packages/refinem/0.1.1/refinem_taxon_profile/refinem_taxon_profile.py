from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Directory, Int, Boolean, String

Refinem_Taxon_Profile_V0_1_0 = CommandToolBuilder(tool="refinem_taxon_profile", base_command=["refinem", "taxon_profile"], inputs=[ToolInput(tag="in_per_to_classify", input_type=Float(optional=True), prefix="--per_to_classify", doc=InputDocumentation(doc="minimum percentage of genes to assign a scaffold to a\ntaxonomic group (default: 20.0)")), ToolInput(tag="in_evalue", input_type=Float(optional=True), prefix="--evalue", doc=InputDocumentation(doc="e-value of valid hits (default: 0.001)")), ToolInput(tag="in_per_identity", input_type=Float(optional=True), prefix="--per_identity", doc=InputDocumentation(doc="percent identity of valid hits (default: 30.0)")), ToolInput(tag="in_per_aln_len", input_type=Float(optional=True), prefix="--per_aln_len", doc=InputDocumentation(doc="minimum percent coverage of query sequence for\nreporting an alignment (default: 50.0)")), ToolInput(tag="in_protein_ext", input_type=Directory(optional=True), prefix="--protein_ext", doc=InputDocumentation(doc="extension of amino acid gene files (other files in\ndirectory are ignored) (default: faa)")), ToolInput(tag="in_tmpdir", input_type=Directory(optional=True), prefix="--tmpdir", doc=InputDocumentation(doc="specify alternative directory for temporary files\n(default: /tmp)")), ToolInput(tag="in_cpus", input_type=Int(optional=True), prefix="--cpus", doc=InputDocumentation(doc="number of CPUs to use (default: 1)")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="suppress output of logger")), ToolInput(tag="in_genome_prot_dir", input_type=String(), position=0, doc=InputDocumentation(doc="directory containing amino acid genes for each genome")), ToolInput(tag="in_scaffold_stats_file", input_type=String(), position=1, doc=InputDocumentation(doc="file with statistics for each scaffold")), ToolInput(tag="in_db_file", input_type=String(), position=2, doc=InputDocumentation(doc="DIAMOND database of reference genomes")), ToolInput(tag="in_taxonomy_file", input_type=String(), position=3, doc=InputDocumentation(doc="taxonomic assignment of each reference genomes")), ToolInput(tag="in_output_dir", input_type=String(), position=4, doc=InputDocumentation(doc="output directory"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Refinem_Taxon_Profile_V0_1_0().translate("wdl", allow_empty_container=True)

