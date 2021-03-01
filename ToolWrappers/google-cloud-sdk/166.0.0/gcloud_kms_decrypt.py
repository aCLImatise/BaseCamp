from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Gcloud_Kms_Decrypt_V0_1_0 = CommandToolBuilder(tool="gcloud_kms_decrypt", base_command=["gcloud", "kms", "decrypt"], inputs=[ToolInput(tag="in_ciphertext_file", input_type=File(optional=True), prefix="--ciphertext-file", doc=InputDocumentation(doc="Path to the ciphertext file to decrypt.")), ToolInput(tag="in_plain_text_file", input_type=File(optional=True), prefix="--plaintext-file", doc=InputDocumentation(doc="Path to the plaintext file to output.")), ToolInput(tag="in_additional_authenticated_data_file", input_type=File(optional=True), prefix="--additional-authenticated-data-file", doc=InputDocumentation(doc="Path to the optional file containing the additional authenticated data.")), ToolInput(tag="in_key", input_type=String(optional=True), prefix="--key", doc=InputDocumentation(doc="The key to use for decryption.")), ToolInput(tag="in_keyring", input_type=String(optional=True), prefix="--keyring", doc=InputDocumentation(doc="The containing keyring.")), ToolInput(tag="in_location", input_type=String(optional=True), prefix="--location", doc=InputDocumentation(doc="The location of the requested resource."))], outputs=[ToolOutput(tag="out_plain_text_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_plain_text_file", type_hint=File()), doc=OutputDocumentation(doc="Path to the plaintext file to output."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Kms_Decrypt_V0_1_0().translate("wdl", allow_empty_container=True)

