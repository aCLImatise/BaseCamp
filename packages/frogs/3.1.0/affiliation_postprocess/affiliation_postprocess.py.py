from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean, File

Affiliation_Postprocess_Py_V0_1_0 = CommandToolBuilder(tool="affiliation_postprocess.py", base_command=["affiliation_postprocess.py"], inputs=[ToolInput(tag="in_b", input_type=String(optional=True), prefix="-b", doc=InputDocumentation(doc="[-r REFERENCE]")), ToolInput(tag="in_identity", input_type=Int(optional=True), prefix="--identity", doc=InputDocumentation(doc="Min percentage identity to agggregate OTU. [Default:\n99.0]")), ToolInput(tag="in_coverage", input_type=Int(optional=True), prefix="--coverage", doc=InputDocumentation(doc="Min percentage coverage to agggregate OTU. [Default:\n99.0]")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Keep temporary files to debug program.")), ToolInput(tag="in_input_biom", input_type=String(optional=True), prefix="--input-biom", doc=InputDocumentation(doc="Abundance table with affiliations metadata from the\naffiliation_OTU program (format: BIOM).")), ToolInput(tag="in_input_fast_a", input_type=File(optional=True), prefix="--input-fasta", doc=InputDocumentation(doc="OTU seed sequence file (format: Fasta).")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="amplicon reference fasta file, to resolve inclusiv\namplicon affiliation")), ToolInput(tag="in_output_biom", input_type=File(optional=True), prefix="--output-biom", doc=InputDocumentation(doc="File whith refind affiliation annotations. [Default:\nrefined_affiliation.biom]")), ToolInput(tag="in_output_compo", input_type=String(optional=True), prefix="--output-compo", doc=InputDocumentation(doc="Aggregated OTU composition [Default:\naggregated_otu_composition.tsv]")), ToolInput(tag="in_output_fast_a", input_type=File(optional=True), prefix="--output-fasta", doc=InputDocumentation(doc="Updated OTU fasta file [Default:\nrefined_affiliation.fasta]")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--log-file", doc=InputDocumentation(doc="The list of commands executed.")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Affiliation_Postprocess_Py_V0_1_0().translate("wdl", allow_empty_container=True)

