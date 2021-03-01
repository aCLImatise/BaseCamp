from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Illuminapairedend_V0_1_0 = CommandToolBuilder(tool="illuminapairedend", base_command=["illuminapairedend"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--DEBUG", doc=InputDocumentation(doc="Set logging in debug mode")), ToolInput(tag="in_without_progress_bar", input_type=Boolean(optional=True), prefix="--without-progress-bar", doc=InputDocumentation(doc="desactivate progress bar")), ToolInput(tag="in_reverse_reads", input_type=File(optional=True), prefix="--reverse-reads", doc=InputDocumentation(doc="Filename containing reverse solexa reads")), ToolInput(tag="in_index_file", input_type=File(optional=True), prefix="--index-file", doc=InputDocumentation(doc="Filename containing illumina index reads")), ToolInput(tag="in_sanger", input_type=Boolean(optional=True), prefix="--sanger", doc=InputDocumentation(doc="input file is in sanger fastq nucleic format (standard\nfastq)")), ToolInput(tag="in_solexa", input_type=Boolean(optional=True), prefix="--solexa", doc=InputDocumentation(doc="input file is in fastq nucleic format produced by\nsolexa sequencer")), ToolInput(tag="in_illumina", input_type=Boolean(optional=True), prefix="--illumina", doc=InputDocumentation(doc="input file is in fastq nucleic format produced by old\nsolexa sequencer")), ToolInput(tag="in_score_min", input_type=Boolean(optional=True), prefix="--score-min", doc=InputDocumentation(doc="=#.###     minimum score for keeping aligment")), ToolInput(tag="in_fast_a_output", input_type=Boolean(optional=True), prefix="--fasta-output", doc=InputDocumentation(doc="Output sequences in obitools fasta format")), ToolInput(tag="in_fast_q_output", input_type=Boolean(optional=True), prefix="--fastq-output", doc=InputDocumentation(doc="Output sequences in sanger fastq format")), ToolInput(tag="in_eco_pcr_db_output", input_type=String(optional=True), prefix="--ecopcrdb-output", doc=InputDocumentation(doc="Output sequences in ecopcr database format (sequence\nrecords are not printed on standard output)")), ToolInput(tag="in_uppercase", input_type=Boolean(optional=True), prefix="--uppercase", doc=InputDocumentation(doc="Print sequences in upper case (default is lower case)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Illuminapairedend_V0_1_0().translate("wdl", allow_empty_container=True)

